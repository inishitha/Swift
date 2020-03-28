import Foundation
import UIKit

print("""

Tower of Hanoi

There are 3 pegs A, B and C. Different diameters of n discs are placed one above the other through the peg A and pets B and C are empty. All the discs from peg A are to be moved to peg C using peg B as temporary storage.
Rules to transfer:
* Only one disc is moved at a time from one peg to another peg
* Smaller disc should be always on top of larger disc.
* Only one peg can be used to for storing intermediate discs.

     __|__
    ___|___
   ____|____
  _____|_____
_______|_______
^^^^^^^^^^^^^^^
        { n == 0    return
F(n) =  {
        { transfer(n-1, s, d, t) otherwise

""")

func transfer(n: Int, source s: Character, temp t: Character, dest d: Character)
{
    if n == 0 {
        return
    }
    
    transfer(n: n-1, source: s, temp: d, dest: t)
    
    print("Move disc \(n) from \(s) to \(d)")
    
    transfer(n: n-1, source: t, temp: s, dest: d)
}

transfer(n: 4, source: "A", temp: "B", dest: "C")
