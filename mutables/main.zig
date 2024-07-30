const print = @import("std").debug.print;

pub fn main() void {
    var y: i32 = 5678;

    y += 1;

    print("{d}\n", .{y});

    // ! not valid
    // var x: i32;
    // nullable
    var x: i32 = undefined;
    x = 12;

    print("{d}\n", .{x});
}
