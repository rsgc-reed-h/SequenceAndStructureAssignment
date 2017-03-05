/*:
 [Previous](@previous) / [Next](@next)
 
 # Design One
 
 Here is a starting point for your assignment that you can build upon.
 
 It will produce this output:
 
 ![example_grid](example_grid.png "Grid example")
 
 From this basic form, make the modifications necessary to produce your intended design.
 
 ## Note
 
 The following two statements are required to make the playground run. Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let offset = random(from: 120, toButNotIncluding: 360)
let canvas = Canvas(width: 500, height: 500)
// Generate a grid
canvas.drawShapesWithFill = false
canvas.defaultBorderWidth = 1

//for i in stride(from: 25, through: 500, by: 25){
//    for diameter in stride(from: 5, through: 50, by: 10){
//        canvas.drawShapesWithBorders = true
//        canvas.borderColor = Color.init(hue: Float(offset), saturation: 000, brightness: 70, alpha: 50)
//        canvas.drawEllipse(centreX: i, centreY: i, width: diameter, height: diameter)
//        canvas.drawEllipse(centreX: 500 - i, centreY: i, width: diameter, height: diameter)
//    }
//}



for x in stride(from: 0, through: 500, by: 75){
for diameter in stride(from: 0, through: 180, by: 5){
    canvas.drawShapesWithBorders = true
    canvas.drawShapesWithFill = false
    canvas.defaultBorderWidth = 1
    canvas.borderColor = Color(hue: Float(diameter), saturation: 100, brightness: 100, alpha: 100)
    canvas.drawEllipse(centreX: x, centreY: x, width: diameter, height: diameter)
    canvas.drawEllipse(centreX: 500 - x, centreY: x, width: diameter, height: diameter)
}
}





//for x in stride(from: 0, through: 500, by: 25){
//for diameter in stride(from: 5, through: 25, by: 1){
//    for plusone in stride(from: 360, through: 0, by: -1){
//    canvas.drawShapesWithFill = false
//    canvas.borderColor = Color(hue: Float(plusone),saturation: 100, brightness: 100, alpha: 100)
//    canvas.drawEllipse(centreX: x, centreY: 25, width:diameter, height: diameter)
//    }
//    }
//}
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
