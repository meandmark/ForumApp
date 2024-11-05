defmodule ForumAppWeb.BoardsView do
  use ForumAppWeb, :live_view
  
  alias ForumApp.Forum
	alias ForumApp.Forum.Board
	
	def render(assigns) do
	  ~H"""
	  	<h1> Boards </h1>
	  """
	end
	
	def mount(_params, _session, socket) do
	  boards = Forum.list_boards!()
	  
	  {:ok, socket}
	end
	
	
end