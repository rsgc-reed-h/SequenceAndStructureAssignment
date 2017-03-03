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
let canvas = Canvas(width: 500, height: 500)

// Generate a grid
canvas.drawShapesWithFill = false
canvas.defaultBorderWidth = 1


for i in stride(from: 25, through: 500, by: 25){
    for diameter in stride(from: 5, through: 50, by: 10){
        canvas.drawShapesWithBorders = true
        canvas.drawShapesWithFill = false
        canvas.borderColor = Color.black
        canvas.drawEllipse(centreX: i, centreY: i, width: diameter, height: diameter)
        canvas.drawEllipse(centreX: 500 - i, centreY: i, width: diameter, height: diameter)
    }
}

//for z in stride(from: 475, through: 500, by: 25){
//    for f in stride(from: 5, through: 50, by: 10){
//        canvas.drawShapesWithBorders = true
//        canvas.drawShapesWithFill = false
//        canvas.borderColor = Color.black
//        canvas.drawEllipse(centreX: z, centreY: z, width: f, height: f)
//    }
//}

/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
