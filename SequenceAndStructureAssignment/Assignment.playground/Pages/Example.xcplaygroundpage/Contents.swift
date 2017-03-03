/*:
 [Previous](@previous) / [Next](@next)
 
 # Example
 
 The canvas is 500 by 500 pixels.
 
 It is sub-divided into 10 columns and rows.
 
 We can imagine it as a grid, then, of 100 squares.
 
 When you run the program, it should look like this:
 
 ![example_grid](example_grid.png "Grid example")
 
 From this basic form, many possibilities can arise.
 
 ## Note
 
 The following two statements are required to make the playground run. Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 500, height: 500)

for c in stride(from: 0, through: 360, by: 1){
}

// Generate a grid
canvas.defaultBorderWidth = 10

// This loop makes a 10 rows of columns
for c in stride(from: 0, through: 360, by: 1){
for x in stride(from: 0, through: 475, by: 23){
    for y in stride(from: 0, through: 475, by: 23) {
        canvas.fillColor = Color(hue: Float(c), saturation: 50, brightness: 70, alpha: 60)
        canvas.drawRectangle(centreX: x, centreY: y, width: 5, height: 5)
    }
}
}

/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
