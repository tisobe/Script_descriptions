#!/usr/bin/perl 

$check = $ARGV[0];

$input = `ls *.html`;
@list  = split(/\n/, $input);
foreach $ent (@list){
	$comp = ` cat $ent`;
	if($comp =~ /$check/i){
		print "$ent\n";
	}
}
