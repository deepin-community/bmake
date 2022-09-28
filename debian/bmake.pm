# A debhelper build system class for handling simple bmake-based projects.
#
# Copyright: © 2008 Joey Hess
#            © 2008-2009 Modestas Vainius
# License: GPL-2+

package Debian::Debhelper::Buildsystem::bmake;

use strict;
use Debian::Debhelper::Dh_Lib qw(compat escape_shell clean_jobserver_makeflags warning);
use parent 'Debian::Debhelper::Buildsystem::makefile';

sub DESCRIPTION {
	"bmake"
}

sub exists_make_target {
	my ($this, $target) = @_;

	# Use -V .ALLTARGETS to get the list of targets; -n is
	# needed to avoid executing anything
	my @opts=("-n", "-V", ".ALLTARGETS");
	my $buildpath = $this->get_buildpath();
	unshift @opts, "-C", $buildpath if $buildpath ne ".";

	my $pid = open(MAKE, "-|");
	defined($pid) || error("fork failed: $!");
	if (! $pid) {
		open(STDERR, ">&STDOUT");
		$ENV{LC_ALL}='C';
		delete $ENV{MAKEFLAGS};
		exec($this->{makecmd}, @opts, @_);
		exit(1);
	}

	local $/=undef;
	my $output=<MAKE>;
	chomp $output;
	close MAKE;

	return defined $output && grep(/^$target$/, split(" ",$output));
}

# Currently, we don't want parallel build with bmake.
sub do_make {
	my $this=shift;

	# Avoid possible warnings about unavailable jobserver,
	# and force make to start a new jobserver.
	clean_jobserver_makeflags();

	# GNU make accepts MAKEFLAGS not starting with a das
	# bmake requires options to be passed as if they were
	# on the command line
	if (exists $ENV{MAKEFLAGS}) {
		if ($ENV{MAKEFLAGS} =~ /^[^-]/) {
			$ENV{MAKEFLAGS} = "-$ENV{MAKEFLAGS}";
		}
	}

	my @root_cmd;
	if (exists($this->{_run_make_as_root}) and $this->{_run_make_as_root}) {
		@root_cmd = gain_root_cmd();
	}

	$this->doit_in_builddir(@root_cmd, $this->{makecmd}, @_);
}

sub check_auto_buildable {
	my $this=shift;
	my ($step)=@_;

	if (-e $this->get_buildpath("makefile") ||
	    -e $this->get_buildpath("Makefile"))
	{
		my $ret = ($this->SUPER::check_auto_buildable(@_));

		open (MAKEFILE, "makefile") || open (MAKEFILE, "Makefile") ||
			return 0;

		while (<MAKEFILE>) {
			chomp;
			if (/^\.?\s*include\s+</) {
				close MAKEFILE;
				$ret++;
				return $ret;
			}
		}
		close MAKEFILE;
		return $ret;
	}
	return 0;
}

sub configure {
	my $this=shift;

	if (-x $this->get_sourcepath("configure"))
	{
		my $ret = ($this->SUPER::configure(@_));
	}
}

sub clean {
	my $this=shift;
	if (!$this->rmdir_builddir()) {
		$this->make_first_existing_target(['cleandir', 'distclean', 'realclean', 'clean'], @_);
	}
}

sub new {
	my $class=shift;
	my $this=$class->SUPER::new(@_);
	$this->{makecmd} = "bmake";
	return $this;
}

1
