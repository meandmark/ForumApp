defmodule ForumApp.Forum.Post do
  use Ash.Resource,
  	domain: ForumApp.Forum,
  	data_layer: AshPostgres.DataLayer
  	
  postgres do
    table "posts"
    repo ForumApp.Forum
  end
  
  actions do
    defaults [:read, :destroy]
    
    create :create do
      accept [:title, :contents]
    end
    
    update :update do
      accept [:title, :contents]
    end
    
  end
  
  attributes do
    uuid_primary_key :id
    attribute :title, :string do
      allow_nil? false
    end
    
    attribute :contents, :string do 
    	allow_nil? false
    end
  end
  
  relationships do
    belongs_to :board, ForumApp.Forum.Board
    has_many :comments, ForumApp.Forum.Comment
  end
  
end