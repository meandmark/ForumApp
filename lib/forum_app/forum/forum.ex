defmodule ForumApp.Forum do
  resources do
    resource ForumApp.Forum.Board do
      define :add_board, action: :create
      define :list_boards, action: read
      define :rename_board, action: :update
      define :remove_board, action: :destroy
    end
    
  end
  
end