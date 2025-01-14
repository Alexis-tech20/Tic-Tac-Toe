import SwiftUI

// Main view for Tic-Tac-Toe game
struct ContentView: View {
    // State variable for board 
    @State private var board = Array(repeating: "", count: 9)
    // State variable to track player 
    @State private var currentPlayer = "X"

    var body: some View {
        VStack {
            // Loop through each row 
            ForEach(0...2, id: \.self) { row in
                HStack {
                    // Loop through each column 
                    ForEach(0...2, id: \.self) { col in
                        let index = row * 3 + col 
                        Text(board[index]) 
                            .frame(width: 50, height: 50) 
                            .background(Color.blue) 
                            .foregroundColor(.white) 
                            .font(.largeTitle) 
                            .onTapGesture {
                              
                                if board[index] == "" { // Check if cell is empty
                                    board[index] = currentPlayer // Mark cell for current player
                                    currentPlayer = (currentPlayer == "X") ? "O" : "X" // Switch player
                                }
                            }
                    }
                }
            }
        }
    }
}
