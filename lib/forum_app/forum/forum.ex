defmodule ForumApp.Forum do
  use Ash.Domain
  
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
    
    resource ForumApp.Forum.Comment do
      define :add_comment, action: :create
      define :list_comments, action: :read
      define :update_comment, action: :update
      define :remove_comment, action: :destroy
    end
    
  end
  
end