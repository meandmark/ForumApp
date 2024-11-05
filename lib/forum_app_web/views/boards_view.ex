defmodule ForumAppWeb.BoardsView do
  use ForumAppWeb, :live_view
  
  alias ForumApp.Forum
	alias ForumApp.Forum.Board
	
	def render(assigns) do
	  ~H"""
	  	<h1> Boards </h1>
	  	
	  	<ul :for={board <- @boards}>
	  		<li><%= board.name %></li>
	  	</ul>
	  """
	end
	
	def mount(_params, _session, socket) do
	  boards = Forum.list_boards!()
	  
	  socket = assign(socket, boards: boards)
	  
	  {:ok, socket}
	end
	
	
end