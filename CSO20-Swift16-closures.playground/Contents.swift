//Closures

func sum(_ a: Int, _ b : Int) -> Int {
    return a + b
}

func subtract(_ a: Int, _ b : Int) -> Int {
    return a - b
}

func calculate(_ a: Int, _ b : Int, operation: (Int, Int) -> Int) -> Int {
    return operation(a, b)
}

calculate(10, 20,operation: sum)

calculate(10, 20, operation: {(a: Int, b: Int) -> Int in
    return a * b
})

calculate(10, 20, operation: {(a, b) -> Int in
    return a * b
})

calculate(10, 20, operation: {a, b in
    return a * b
})

calculate(10, 20, operation: {
    return $0 * $1
})

calculate(10, 20, operation: {$0 * $1})

calculate(10, 20, operation: *)

calculate(10, 20) {$0 * $1}

import Foundation
var names = [
    "Alessandra",
    "Jéssica",
    "Anderson",
    "Demys",
    "Harley"
]

//MAP
let correctedNames = names.map({$0.trimmingCharacters(in: CharacterSet.whitespaces)})
print(correctedNames)

let uppercassedNames = correctedNames.map({$0.uppercased()})
print(uppercassedNames)

let britos = correctedNames.map({$0 + " Brito"})
print(britos)

//Filter
let newNames = correctedNames.filter({$0.count < 7})
print(newNames)

//Reduce
let sumLetters = correctedNames.reduce(0, {$0 + $1.count})
print(sumLetters)
