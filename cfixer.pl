#!/usr/bin/perl
#a perl program to reformat tom's code

#open c file and read data into string
$ARGC = @ARGV;

if($ARGC != 1) {
        print "Usage: perl cfixer.pl <file>\n";
        exit;
}
open file, "@ARGV[0]" or die "Could not open @ARGV[0]\n";

while(<file>) {
        $code = $code.$_;
}


#correct brace on seperate line
$code =~ s/\).*\n[\t|\ ]*\{/\)\ \{/g;

#correct spaces inside parenthesis left and right
$code =~ s/\((\ )+/\(/g;
$code =~ s/(\ )+\)/\)/g;

#fix space between statement/function and parens
$code =~ s/([^=]) \(/$1\(/g;

#else if stuff
$code =~ s/\}.*\n\t*else if/\} else if/g;

#else stuff
$code =~ s/\}.*\n\t*else\s*\{/\} else {/g;

#make 8 spaces into tabs
$code =~ s/(\ ){8}/\t/g;

#replace space indents with tab indents
$code =~ s/^(\ )+/\t/g;

print $code;
