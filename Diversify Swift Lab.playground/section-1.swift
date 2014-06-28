// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"




/* add two numbers */
func plus(left: Int, right: Int) -> Int {
    return left + right
}
plus(1, 2)


/* add numbers in an array */
func addAll(heltal: Int[]) -> Int {
    return heltal.reduce(0){$0 + $1}
}
let ints = [1,7,5,2]
addAll(ints)


// --------------

func max(vals : Int[]) -> Int {
    return vals.reduce(Int.min) {max($0,$1)}
}

max(ints)

// --------------

func minMax(vals : Int[]) -> (Int,Int) {
    return (vals.reduce(Int.min) {max($0,$1)}, vals.reduce(Int.max) {min($0,$1)})
}

let (maxi, mini) = minMax(ints)

mini
maxi

println ("mini: \(mini) max: \(maxi)")

func average(vals: Int[]) -> Double {
    return Double(addAll(vals)) /  Double(vals.count)
}

average(ints)


/* add all types of numbers in an array */
func addAllNumbers<T: Integer>(heltal: T[]) -> T {
    return heltal.reduce(0){$0 + $1}
}


let doubles = [1.1, 1.2, 1.5]

addAllNumbers(ints)



class Shape {
    var name:String
    
    init(name:String){
        println("I am a \(name)")
        self.name = name
    }
}


class Circle : Shape {
    var radius:Double// {
       // get{
       //     return self.radius
       // }
       // set{
       //     self.radius = newValue
       // }
   // }
    
    init(radius:Double) {
        self.radius = radius
        super.init(name:"Circle")
        
    }
    
}

class Square : Shape {
    init() {
        super.init(name:"Square")
    }
    
}


let kalle = Circle(radius:2.1)
kalle.name = "Jocke"

kalle.name























