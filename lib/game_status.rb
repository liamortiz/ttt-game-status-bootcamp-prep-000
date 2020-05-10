# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [[0, 1, 2], # Top row
                    [3, 4, 5], # Bottom row
                    [6, 7, 8], # Last row
                    [0, 3, 6], # Left col
                    [1, 4, 7], # Middle col
                    [2, 5, 8], # Right
                    [0, 4, 8], # X1
                    [6, 4, 2]  # X2
                    ]
def won?(board)
  if !board.any?{|c| c == "X" || c == "Y"} or draw?(board)
    return false
  end
  
  WIN_COMBINATIONS.select{|row| row.all?{|index| position_taken?(board, index)}}.each do |row|
    if row.all?{|index| board[index] == 'X'} or row.all?{|index| board[index] == 'O'}
      return row
    end
  end
end

def full?(board)
  !board.any?(" ")
end

def draw?(board)
  if board.count{|c| c == "O" or c == "X"} == 9
    return true
  end
  # Check for top row win
  if WIN_COMBINATIONS[0].all?{|index| board[index] == 'X'}
    return false
  if WIN_COMBINATIONS[0].all?{|index| board[index] == 'O'}
    return false
end






