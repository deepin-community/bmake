# A debhelper build system class for handling simple bmake-based projects.
#
# Copyright: © 2008 Joey Hess
#            © 2008-2009 Modestas Vainius
# License: GPL-2+

package Debian::Debhelper::Buildsystem::pmake;

use strict;
use base 'Debian::Debhelper::Buildsystem::bmake';

sub DESCRIPTION {
	"pmake"
}

sub new {
	my $class=shift;
	my $this=$class->SUPER::new(@_);
	$this->{makecmd} = "pmake";
	return $this;
}

1
