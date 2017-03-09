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

canvas.drawShapesWithBorders = true
canvas.drawShapesWithFill = true
canvas.fillColor = Color.purple
canvas.drawRectangle(centreX: 258, centreY: 460, width: 50, height: 50, borderWidth: 5)
canvas.drawRectangle(centreX: 58, centreY: 260, width: 50, height: 50, borderWidth: 5)
canvas.drawRectangle(centreX: 258, centreY: 60, width: 50, height: 50, borderWidth: 5)
canvas.drawRectangle(centreX: 458, centreY: 260, width: 50, height: 50, borderWidth: 5)

canvas.drawText(message: "C", size: 20, x: 250, y: 450)
canvas.drawText(message: "O", size: 20, x: 50, y: 250)
canvas.drawText(message: "D", size: 20, x: 250, y: 50)
canvas.drawText(message: "E", size: 20, x: 450, y: 250)

/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
