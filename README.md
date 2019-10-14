# cfixer
A perl script to reformt code written by Tom

This script reformats code written by Tom to a format I prefer. Things it fixes:
* moves single line brace up one line
* removes spaces inside parenthesis
* removes space between function/for/while/if and ()
* compacts if-elseif-else statements

## how
Perl regex. Ugly on top of ugly.
