const std = @import("std");

test "expect this to fail" {
    try std.testing.expect(false);
}

test "expect this to success" {
    try std.testing.expect(true);
}
