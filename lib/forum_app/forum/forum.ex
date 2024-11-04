defmodule ForumApp.Forum do
  resources do
    resource ForumApp.Forum.Board do
      define :add_board, action: :create
      define :list_boards, action: read
      define :rename_board, action: :update
      define :remove_board, action: :destroy
    end
    
    resource ForumApp.Forum.Post do
      define :add_post, action: :create
      define :list_posts, action: read
      define :update_post, action: :update
      define :remove_post, action: :destroy
    end
    
  end
  
end