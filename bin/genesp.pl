#!/usr/bin/env perl
#
# @brief    
# @version  ver.1.0
# @date     Wed Aug 17 11:13:57 CEST 2016
# @company  Frobas IT Department, www.frobas.com 2016
# @author   Vladimir Roncevic <vladimir.roncevic@frobas.com>
#
use strict;
use warnings;
use Sys::Hostname;
use Getopt::Long;
use Pod::Usage;
use GenProRoot qw(genproroot);
use GenProStructure qw(genprostructure);
use File::Basename qw(dirname);
use Cwd qw(abs_path);
use lib dirname(dirname(abs_path($0))) . '/../../lib/perl5';
use Logging;
use Configuration;
use Notification;
use Status;

my $cfg = dirname(dirname(abs_path($0))) . "/conf/genesp.cfg";
my $log = dirname(dirname(abs_path($0))) . "/log/genesp.log";
our $TOOL_DBG="false"; 

#
# @brief   
# @param   Value required hash argument structure
# @exitval Function genesp exit with integer value
#			0   - success operation 
# 			128 - wrong arguments of ADD USER operation
# 
#
# @usage
# @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
# 
# genesp()
#
sub genesp {
	my $fCaller = (caller(0))[3];
	my $msg = "None";
	my $host = hostname();
	my %opt = %{$_[0]};
	my %preferences;
	if(readpref($cfg, \%preferences) == $SUCCESS) {
		$opt{PREFERENCES} = \%preferences;
		#genproroot(\%opt);
		#genprostructure(\%opt);
		print("### $option\n");
		exit(0);
	}
	exit(128);
}

#
# @brief   Main entry point
# @param   Value optional help | manual
# @exitval Script tool genesp exit with integer value
#			0   - success operation 
# 			127 - run as root user
# 			128 - wrong arguments of ADD USER operation
#
my $name;
my $path;
my $help;
my $man;
my %esparg;

if (@ARGV > 0) {
	GetOptions(
		'name=s' => \$name,
		'path=s' => \$path,
		'help|?' => \$help,
		'manual' => \$man
	) or pod2usage(2);
}

my $username = (getpwuid($>));
my $uid = ($<);

if(($username eq "root") && ($uid == 0)) {
	if(defined($help)) {
		pod2usage(1);
	} elsif(defined($man)) {
		pod2usage(VERBOSE => 2);
	} elsif((defined($name)) && (defined($path))) {
		$esparg{PROJECT_NAME}="$name";
		$esparg{PROJECT_PATH}="$path";
		genesp(\%esparg);
	} else {
		pod2usage(1);
	}
}
exit(127);

__END__

############################### POD genesp.pl ##################################

=head1 NAME

genesp - 

=head1 SYNOPSIS

Use:

    genesp [options] 
    
    [options] add del list help manual

Examples:



=head1 DESCRIPTION



=head1 ARGUMENTS

genesp takes the following arguments:

=over 2

=item help

    help

    (Optional.) Show help info information

=item manual

    manual

    (Optional.) Display manual

=back

=head1 AUTHORS

Vladimir Roncevic, E<lt>vladimir.roncevic@frobas.comE<gt>.

=head1 COPYRIGHT

This program is distributed under the Frobas License.

=head1 DATE

17-Aug-2016

=cut

############################### POD genesp.pl ##################################
