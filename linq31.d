module linq31;

import std.algorithm, std.stdio, std.uni, std.range;

void perform()
{
    immutable words = ["aPPLE", "AbAcUs", "bRaNcH", "BlUeBeRrY", "ClOvEr", "cHeRry"];
    words.dup.array.sort!("toLower(a) < toLower(b)").writeln;
}
