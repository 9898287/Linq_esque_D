module linq9;

import std.stdio, std.algorithm, std.uni;

void perform()
{
    immutable words = ["aPPLE", "BlUeBeRrY", "cHeRry"];

    words
        .map!(w => 
            "Uppercase: " 
            ~ w.toUpper
            ~ ", Lowercase: "
            ~ w.toLower
        )
        .each!writeln;
    
}
