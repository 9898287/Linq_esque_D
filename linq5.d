module linq5;

import std.stdio, std.algorithm, std.range;

void perform()
{
  immutable digits = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"];

  writeln("Short digits:");

  digits
    .enumerate
    .filter!(x => x[1].length < x[0])
    .map!(x => x[1])
    .map!(x => "The word " ~ x ~ " is shorter than its value.")
    .each!writeln;
}
