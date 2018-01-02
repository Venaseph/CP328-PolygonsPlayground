//: Playground - noun: a place where people can play

import UIKit

// Main Class for array building later
class Shape {
    
}

//Implement the protocol on a Triangle, Square, and Rectangle.
class Triangle:Shape, Polygon {
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
    
    func perimiter() -> Float {
        return a+b+c
    }
    
    func area() -> Float {
        //Thanks to my hellenstic hero of Alexandria!
        let sp = (a+b+c)/2
        let area = sqrtf(sp*(sp-a)*(sp-b)*(sp-c))
        return area
    }
}

class Square:Shape, Polygon {
    var a: Float
    var name: String = "Square"
    var sides: Int = 4
    init(a: Float) {
        self.a = a
    }
    
    func perimiter() -> Float {
        return a*4
    }
    
    func area() -> Float {
        return a*2
    }
}

class Rectangle:Shape, Polygon {
    var a: Float
    var b: Float
    var name: String = "Rectangle"
    var sides: Int = 4
    init(a: Float, b: Float) {
        self.a = a
        self.b = b
    }
    
    func perimiter() -> Float {
        return 2*(a*b)
    }
    func area() -> Float {
        return a*b
    }
}

protocol Polygon {
    var name: String { get }
    var sides: Int { get }
    func perimiter() -> Float
    func area() -> Float
}

//MARK: Create Instances of, return array of
func makeShapes() -> [Shape]{
    let s1 = Triangle(a:3,b:4,c:5)
    //print(s1.name)
    //print(s1.perimiter().description)
    //print(s1.area().description)
    let s2 = Triangle(a:6,b:8,c:10)
    let s3 = Square(a: 15)
    let s4 = Square(a: 25)
    let s5 = Rectangle(a:20,b:13)
    let s6 = Rectangle(a:17,b:50)
    
    return [s1,s2,s3,s4,s5,s6]
}


func draw (shapes: [Shape]) {
    shapes.forEach { shape in
        //print(shape.name)
    }
}

var shapes = makeShapes()
draw(shapes: shapes)



/*
shapes.forEach { shape in
    
}
 
for (index,item) in shapes.enumerated() {
 print("Found \(item) at position \(index)")
 }
 */










