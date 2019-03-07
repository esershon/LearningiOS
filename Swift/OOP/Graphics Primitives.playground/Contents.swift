import UIKit


//Struct Practice


struct Point{
    var X: Double
    var Y: Double
}

struct Line {
    var start: Point
    var end: Point
    func length() -> Double{
        let Xdelta = self.start.X - self.end.X
        let Ydelta = self.start.Y - self.end.Y
        let XdeltaSq = pow(Xdelta, 2)
        let YdeltaSq = pow(Ydelta, 2)
        return pow((XdeltaSq + YdeltaSq), (1/2))
    }
}

struct Triangle{
    var corner: [Point]
    func area() ->Double?{
        //return optional Double since the array of corners doesn't require 3 corners to exist. If we don't have 3 corners, return nil
        if corner.count==3{
            //formula to find area of triangle using coordinates
            let arg1 = self.corner[0].X * (self.corner[1].Y - self.corner[2].Y)
            let arg2 = self.corner[1].X * (self.corner[2].Y - self.corner[0].Y)
            let arg3 = self.corner[2].X * (self.corner[0].Y - self.corner[1].Y)
            return abs((arg1 + arg2 + arg3)/2)
        }
        else{
         return nil
        }
    }
}

var corner1: Point = Point(X:1, Y:1)
var corner2: Point = Point(X:5, Y:4)
var corner3: Point = Point(X:8, Y:2)
var side1: Line = Line(start:corner1, end:corner2)
var side2: Line = Line(start:corner2, end:corner3)
var side3: Line = Line(start:corner3, end:corner1)
print(side1.length())
print(side2.length())
print(side3.length())
var myTri: Triangle = Triangle(corner:[corner1,corner2,corner3])
print(myTri.area()!)
//myTri.area() returns Optional type Double?. To use, unwrap using "if let"
//! force unwraps it for printing
