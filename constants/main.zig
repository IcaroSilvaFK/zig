const x = 1234;

fn foo() void {
    const y = 1234;

    y += 1;
}

pub fn main() void {
    foo();
}
