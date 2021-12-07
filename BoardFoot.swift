/*
  BoardFoot.swift
  
  By Zefeng Wang
  Created on December 2, 2021
  
  This program reads the width and height from the user, and returns the 
  length of the board foot knowing that the board foot always has a volume
  of 144 inches^3. 
 */

// Calculates the length of a board foot given its width and height
func calculateBoardFoot(width: Double, height: Double) -> Double {
	let boardFootVol = Double(144)
	return boardFootVol / (width * height)
}

while true {
	// Ask the user for the width and height of the board foot and reads them
	print("Please enter the width: ")
	if let width = Double(readLine()!) {
		print("Please enter the height: ")
		if let height = Double(readLine()!) {
			let length = calculateBoardFoot(width: width, height: height)
			// Display the length
			print("Length is \(length) inch(es),height is \(height) inch(es), and width is \(width) inch(es)\n")
			break
		} else {
			print("Please enter a valid height.")
		}
	} else {
		print("Please enter a valid width.")
	}

}
