def turn(board)
  display_board(board)
  valid_move?()
  move(board, index, value)
end

def display_board(board)
  rows = (0...3).collect do |row_index|
    i = row_index*3
    row = board[i...i+3]
    ' ' + row.join(' | ') + ' '
  end
  puts rows.join("\n" + '-'*11 + "\n")
end

def valid_move?(board, index)
  if ((index.between?(0, 8)  && board[index] == " ") ||
     (index.between?(0, 8)  && board[index] == "") ||
     (index.between?(0, 8)  && board[index] == nil))
    return true
  elsif (board[index] == "X" || board[index] == "O")
    return false
  end
end

def position_taken?(board,index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  elsif board[index] == "X" || board[index] == "O"
    return true
  end
end