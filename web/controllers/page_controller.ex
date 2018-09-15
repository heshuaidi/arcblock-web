defmodule ArcblockWeb.PageController do
  use ArcblockWeb.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
