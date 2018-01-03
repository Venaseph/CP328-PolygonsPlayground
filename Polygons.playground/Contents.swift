//: Playground - noun: a place where people can play

import UIKit

protocol Polygon {
    var name: String { get }
    var sides: Int { get }
    func perimeter() -> Float
    func area() -> Float
}

//Implement the protocol on a Triangle, Square, and Rectangle.
class Triangle:Polygon {
    var a: Float
    var b: Float
    var c: Float
    var name: String = "Triangle"
    var sides: Int = 3
    //constructor
    init(a: Float, b:Float, c: Float) {
        self.a = a
        self.b = b
        self.c = c
    }
    
    func perimeter() -> Float {
        return a+b+c
    }
    
    func area() -> Float {
        //Thanks to my hellenstic hero of Alexandria!
        let sp = (a+b+c)/2
        let area = sqrtf(sp*(sp-a)*(sp-b)*(sp-c))
        return area
    }
}

class Square:Polygon {
    var a: Float
    var name: String = "Square"
    var sides: Int = 4
    init(a: Float) {
        self.a = a
    }
    
    func perimeter() -> Float {
        return a*4
    }
    
    func area() -> Float {
        return a*a
    }
}

class Rectangle:Polygon {
    var a: Float
    var b: Float
    var name: String = "Rectangle"
    var sides: Int = 4
    init(a: Float, b: Float) {
        self.a = a
        self.b = b
    }
    
    func perimeter() -> Float {
        return 2*(a+b)
    }
    func area() -> Float {
        return a*b
    }
}

//MARK: Create Instances of, return array of
func makeShapes() -> [Polygon]{
    let s1 = Triangle(a:3,b:4,c:5)
    let s2 = Triangle(a:6,b:8,c:10)
    let s3 = Square(a: 15)
    let s4 = Square(a: 25)
    let s5 = Rectangle(a:20,b:13)
    let s6 = Rectangle(a:17,b:50)
    
    return [s1,s2,s3,s4,s5,s6]
}

let shapes = makeShapes()

func draw (shape: Polygon) {
    print("\(shape.name) has \(shape.sides). Perimeter is \(shape.perimeter().description). Area is \(shape.area().description).")
}

shapes.forEach { shape in
    draw(shape: shape)
}

/*
 func draw (shapes: [Polygon]) {
 shapes.forEach { shape in
 print("\(shape.name) has \(shape.sides). Perimeter is \(shape.perimeter().description). Area is \(shape.area().description).")
 }
 }
 draw(shapes: shapes)
 */
