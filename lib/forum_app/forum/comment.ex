defmodule ForumApp.Forum.Comment do
  use Ash.Resource,
  	domain: ForumApp.Forum,
  	data_layer: AshPostgres.DataLayer
  	
  postgres do
    table "comments"
    repo ForumApp.Repo
  end
  
  actions do
    defaults [:read, :destroy]
    
    create :create do
      accept [:contents]
    end
    
    update :update do
      accept [:contents]
    end
    
  end
  
  attributes do
    uuid_primary_key :id
    attribute :contents, :string do
      allow_nil? false
    end

  end
  
  relationships do
    # TODO: Find a way for a comment to be a reply to another comment as well as a post.
    belongs_to :post, ForumApp.Forum.Post
  end
  
end