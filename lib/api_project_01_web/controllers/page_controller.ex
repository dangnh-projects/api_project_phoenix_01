defmodule ApiProject01Web.PageController do
  use ApiProject01Web, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end