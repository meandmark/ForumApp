defmodule ForumApp.Forum.Board do
  use Ash.Resource,
  	domain: ForumApp.Forum,
  	data_layer: AshPostgres.DataLayer
  	
  postgres do
    table "boards"
    repo ForumApp.Repo
  end
  
  actions do
    defaults [:read, :destroy]
    
    create :create do
      accept [:name]
    end
    
    update :update do
      accept [:name]
    end
    
  end
  
  attributes do
    uuid_primary_key :id
    attribute :name, :string do
      allow_nil? false
    end
    
  end
  
  relationships do
    has_many :posts, ForumApp.Forum.Post
  end
  
end