module linq27;

import std.stdio, std.algorithm, std.range;

void perform()
{
    immutable numbers = [5, 4, 1, 3, 9, 8, 6, 7, 2, 0];

    writeln("All elements starting from first element less than its position:");

    numbers
        .enumerate
        .find!(t => t[0] < t[1])
        .map!(t => t[1])
        .each!(writeln);

}
