#Regular Expressions

*Objectives*
>use regular ecpressions to match against strings

##What's a RegExp
a regular expresision(REGEX) are a sequence of characters that form a search pattern and are used in string matching

    name.match(/^[\da-z]+\d$/]);
    name.match(/
      ^ from the begining
      { a set of characters containing
      \d any digit
      a the letter a
      - through
      z the letter z
      ] end lass
      + one or more
      })
an example:
    email = "joe@example.com
    if = email =~/joe@example.com/
     puts "Something"
    end
another for string matching

    "joe@example.com is cool" =~ /joe@example.com is cool/
* '0' is returned which means "true"
    "joe@example.com is cool" =~ /bob@example.com is cool/
* 'nil' is returned which means "false"
    "joe@example.com is cool" =~ /e/
* '2' is returned which the index number

Rubular - regular expression index

##RegExp Syntax

**Literal Character**
    /a/
    "batman has a nice hat"
    * all 'a's returned
**Literal special character**
to find special characters use an escape e.g.
    \?
**Wildcard Character**
    /.ob/
will match "bob" or "rob" etc.
the "." stands for anything
**Character class**
    /[RrBb]ob/
will match any character inside the square brackets according to what's outside
    [aeiou]
this will match any vowels
**Character class (Range)**
    /[a-z]ob/
matching all in a range. Better than typing all 26 letters
    /[A-Fa-f0-9]/
will match any character from a to f in both cases and 0-9
    /[^A-Fa-f0-9]/
match anything that ISN'T in a set of character
**Predefined Classes**
    /\d/
just predefined classes
*Operator
star opertaor says it will match 0 or more instances of whatever came before it
    /*a/
will match 0 or more of 'a'
    /.*/
0 or more instances of anything
    /Jon *Doe/
will match 'j' 'o' 'n' and ' '
    +Operator
will match 1 or more of any character before it
    /Jon +Doe/
**?Operator**
operates on the preceeding character
exactly 0 or 1 of the preceeding character
e.g. if we want to match "cat" or "cats"
    **{n}Operator**
matches exactly 3 instances of the character that comes before it
    /a{3}/
match exactly 3 instances of 'a'
    a{3,7}
a range
a{3,}
putting nothing after the comma means match 3 or more
    /\d{3,4}
3 or 4 instances of any single digit
**Lines**
/^ruby/
matches lines that start with "ruby"
/ruby$/
same but for the end of a line
Brackets (or notation)
/(R|B)ob/
will match against R or B
/(?:R|B)ob/
stops the brackets from capturing

    (?:\d{1,2})\/(?:\d{1,2})\/(?:\d{4})
matches date 
**named Captures**
    (?<day>\d{1,2})\/(?<month>\d{1,2})\/(?<year>\d{4})
naming your captures
