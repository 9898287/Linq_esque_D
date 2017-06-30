module linq14;

import std.stdio, std.range, std.algorithm, std.array, std.conv;

void perform()
{
    immutable numbers_a = [0, 2, 4, 5, 6, 8, 9];
    immutable numbers_b = [1, 3, 5, 7, 8];

    writeln("Pairs where a < b:");

    numbers_a
        .map!(n => numbers_b
            .filter!(m => n < m)
            .map!(p => n.to!string ~ " is less than " ~ p.to!string))
        .each!(each!(writeln));
}
