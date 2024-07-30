const print = @import("std").debug.print;
const mem = @import("std").mem;

pub fn main() void {
    const bytes = "Hello";

    print("{}\n", .{@TypeOf(bytes)});
    print("{d}\n", .{bytes.len});
    print("{c}\n", .{bytes[1]});
    print("{c}\n", .{bytes[5]});
    print("{}\n", .{'e' == '\x65'});
    print("{d}\n", .{'\u{1f4a9}'});
    print("{d}\n", .{'💯'}); // 128175
    print("{u}\n", .{'⚡'});
    print("{}\n", .{mem.eql(u8, "hello", "h\x65llo")});
    const invalid_utf8 = "\xff\xfe"; // non-UTF-8 strings are possible with \xNN notation.
    print("0x{x}\n", .{invalid_utf8[1]}); // indexing them returns individual bytes...
    print("0x{x}\n", .{"💯"[1]}); // ...as does indexing part-way through non-ASCII characters

    const hello_world_in_c =
        \\ #include <stdio.h>
        \\ 
        \\int main(int argc,char **argv)
        \\{
        \\  printf("Hello world\n")
        \\  return 0
        \\}
    ;

    print("\n\n{s}\n", .{hello_world_in_c});
}
