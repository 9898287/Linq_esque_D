module linq25;

import std.stdio, std.algorithm, std.range;

void perform()
{
    immutable numbers = [5, 4, 1, 3, 9, 8, 6, 7, 2, 0];

    "First numbers not less than their position:".writeln;

    numbers
        .dup
        .enumerate
        .until!(t => t[1] < t[0])
        .map!(t => t[1])
        .each!(writeln);
}
