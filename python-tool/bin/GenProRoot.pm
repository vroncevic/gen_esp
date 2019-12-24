package GenProRoot;
#
# @brief    Generate project root folder and project config file
# @version  ver.1.0
# @date     Mon Aug 22 16:09:02 CEST 2016
# @company  Frobas IT Department, www.frobas.com 2016
# @author   Vladimir Roncevic <vladimir.roncevic@frobas.com>
#
use 5.018002;
use strict;
use warnings;
use Exporter;
use XML::Simple;
use SetSpiMode qw(setspimode);
use SetSpiSize qw(setspisize);
use SetSpiSpeed qw(setspispeed);
use SetBootMode qw(setbootmode);
use SetBootVersion qw(setbootversion);
use File::Basename qw(dirname);
use Cwd qw(abs_path);
use lib dirname(dirname(abs_path($0))) . '/../../lib/perl5';
use Status;
our @ISA = qw(Exporter);
our %EXPORT_TAGS = ('all' => [qw()]);
our @EXPORT_OK = (@{$EXPORT_TAGS{'all'}});
our @EXPORT = qw(genproroot);
our $VERSION = '1.0';
our $TOOL_DBG = "false";

#
# @brief   Generate project root folder and project config file
# @param   Value required argument structure
# @retval  Success 0, else 1
#
# @usage
# @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
# 
# use GenProRoot qw(genproroot);
#
# ...
#
# my $status = genproroot(\%argStructure);
#
# if ($status == $SUCCESS) {
#	# true
#	# notify admin | user
# } else {
#	# false
#	# return $NOT_SUCCESS
#	# or
#	# exit 128
# }
#
sub genproroot {
	my $fCaller = (caller(0))[3];
	my $msg = "None";
	my %argStructure = %{$_[0]};
	if(%argStructure) {
		my $xmlfh = XML::Simple->new();
		my $toolHome = dirname(dirname(abs_path($0)));
		my $toolCfg = "$toolHome/conf";
		my $xmlProRoot = "$argStructure{PREFERENCES}->{GEN_PRO_ROOT_STRUCTURE}";
		my $genProRoot = "$toolCfg/$xmlProRoot";
		my $proRoot = $xmlfh->XMLin($genProRoot);
		my $dir = "$argStructure{PROJECT_PATH}";
		my $pname = "$argStructure{PROJECT_NAME}";
		if(-d "$dir/") {
			if(! -d "$dir/$pname/") {
				mkdir("$dir/$pname/");
				my $fh;
				my $fname = "$dir/$pname/$pname" . "_env.sh";
				open($fh, ">>$fname");
				if($fh) {
					print($fh "$proRoot->{firmware}->{bootVersion}");
					my $version;
					if(setbootversion(\%argStructure, \$version) == $NOT_SUCCESS) {
						return ($NOT_SUCCESS);
					}
					print($fh "$version\n");
					print($fh "$proRoot->{firmware}->{bootMode}");
					my $mode;
					if(setbootmode(\%argStructure, \$mode) == $NOT_SUCCESS) {
						return ($NOT_SUCCESS);
					}
					print($fh "$mode\n");
					print($fh "$proRoot->{firmware}->{spiSpeed}\n");
					my $spiSpeed;
					if(setspispeed(\%argStructure, \$spiSpeed) == $NOT_SUCCESS) {
						return ($NOT_SUCCESS);
					}
					print($fh "$spiSpeed\n");
					print($fh "$proRoot->{firmware}->{spiMode}");
					my $spiMode;
					if(setspimode(\%argStructure, \$spiMode) == $NOT_SUCCESS) {
						return ($NOT_SUCCESS);
					}
					print($fh "$spiMode\n");
					print($fh "$proRoot->{firmware}->{spiSizeMap}");
					my $spiSize;
					if(setspisize(\%argStructure, \$spiSize) == $NOT_SUCCESS) {
						return ($NOT_SUCCESS);
					}
					print($fh "$spiSize\n");
				}
				close($fh);
			} else {
				$msg = "Project directory already exist [$dir/$pname/]";
				print("[Error] " . $fCaller . " " . $msg . "\n");
				return ($NOT_SUCCESS);
			}
		} else {
			$msg = "Check directory [$dir/]";
			print("[Error] " . $fCaller . " " . $msg . "\n");
			return ($NOT_SUCCESS);
		}
		$msg = "Done";
		if("$TOOL_DBG" eq "true") {
			print("[Info] " . $fCaller . " " . $msg . "\n");
		}
		return ($SUCCESS);
	}
	$msg = "Check argument [ARGUMENT_STRUCTURE]";
    print("[Error] " . $fCaller . " " . $msg . "\n");
	return ($NOT_SUCCESS);
} 

1;
__END__

=head1 NAME

GenProRoot - Generate project root folder and project config file

=head1 SYNOPSIS

	use GenProRoot qw(genproroot);

	...

	my $status = genproroot(\%argStructure);

	if ($status == $SUCCESS) {
		# true
		# notify admin | user
	} else {
		# false
		# return $NOT_SUCCESS
		# or
		# exit 128
	}

=head1 DESCRIPTION 

Generate project root folder and project config file

=head2 EXPORT

genproroot - return 0 for success, else return 1

=head1 AUTHOR

Vladimir Roncevic, E<lt>vladimir.roncevic@frobas.comE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2016 by www.frobas.com 

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.18.2 or,
at your option, any later version of Perl 5 you may have available.

=cut
