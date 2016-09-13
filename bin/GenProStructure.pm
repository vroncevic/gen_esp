package GenProStructure;
#
# @brief    Generate project folder structure
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
use File::Basename qw(dirname);
use Cwd qw(abs_path);
use lib dirname(dirname(abs_path($0))) . '/../../lib/perl5';
use Status;
our @ISA = qw(Exporter);
our %EXPORT_TAGS = ('all' => [qw()]);
our @EXPORT_OK = (@{$EXPORT_TAGS{'all'}});
our @EXPORT = qw(genprostructure);
our $VERSION = '1.0';
our $TOOL_DBG = "false";

#
# @brief   Generate project folder structure
# @param   Value required argument structure
# @retval  Success 0, else 1
#
# @usage
# @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
# 
# use GenProStructure qw(genprostructure);
#
# ...
#
# my $status = genprostructure(\%argStructure);
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
sub genprostructure {
	my $fCaller = (caller(0))[3];
	my $msg = "None";
	my %argStructure = %{$_[0]};
	if(%argStructure) {
		my $xmlfh = XML::Simple->new();
		my $toolHome = dirname(dirname(abs_path($0)));
		my $toolCfg = "$toolHome/conf";
		my $xmlProStructure = "$argStructure{PREFERENCES}->{GEN_PRO_STRUCTURE}";
		my $genProStructure = "$toolCfg/$xmlProStructure";
		my $proStructure = $xmlfh->XMLin($genProStructure);
		my $dir = "$argStructure{PROJECT_PATH}";
		my $pname = "$argStructure{PROJECT_NAME}";
		if(-d "$dir/") {
			if(-d "$dir/$pname/") {
				mkdir("$dir/$pname/$proStructure->{structure}->{deployDir}");
				mkdir("$dir/$pname/$proStructure->{structure}->{headerDir}");
				mkdir("$dir/$pname/$proStructure->{structure}->{linkerDir}");
				mkdir("$dir/$pname/$proStructure->{structure}->{libraryDir}");
				mkdir("$dir/$pname/$proStructure->{structure}->{sourceDir}");
				$msg = "Done";
				if("$TOOL_DBG" eq "true") {
					print("[Info] " . $fCaller . " " . $msg . "\n");
				}
				return ($SUCCESS);
			}
			$msg = "Check project directory [$dir/$pname/]";
			print("[Error] " . $fCaller . " " . $msg . "\n");
			return ($NOT_SUCCESS);
		}
		$msg = "Check directory [$dir/]";
		print("[Error] " . $fCaller . " " . $msg . "\n");
		return ($NOT_SUCCESS);
	}
	$msg = "Check argument [ARGUMENT_STRUCTURE]";
    print("[Error] " . $fCaller . " " . $msg . "\n");
	return ($NOT_SUCCESS);
} 

1;
__END__

=head1 NAME

GenProStructure - Generate project folder structure

=head1 SYNOPSIS

	use GenProStructure qw(genprostructure);

	...

	my $status = genprostructure(\%argStructure);

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

Generate project folder structure

=head2 EXPORT

genprostructure - return 0 for success, else return 1

=head1 AUTHOR

Vladimir Roncevic, E<lt>vladimir.roncevic@frobas.comE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2016 by www.frobas.com 

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.18.2 or,
at your option, any later version of Perl 5 you may have available.

=cut
