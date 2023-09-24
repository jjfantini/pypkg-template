"""
Notice that this code has no main() function, so you can’t execute mymodule.mojo. However, you can import this into another file with a main() function and use it there.

For example, here’s how you can import MyPair into a file named main.mojo that’s in the same directory as mymodule.mojo:

main.mojo
from mymodule import MyPair

fn main():
    let mine = MyPair(2, 4)
    mine.dump()

Alternatively, you can import the whole module and then access its members through the module name. For example:
"""

struct MyPair:
    var first: Int
    var second: Int

    fn __init__(inout self, first: Int, second: Int):
        self.first = first
        self.second = second

    fn dump(self):
        print(self.first, self.second)