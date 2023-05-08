import Cocoa
import Foundation

let recyclingTrashs: Array<String> =
    ["metal",
     "paper",
     "glass",
     "plastic",
     "electronic",
     "organic"]

let trashs: Array<Array<String>> =
    [["general"], ["food waste"], recyclingTrashs]



print(trashs[0][0])

print(trashs[2][3])
