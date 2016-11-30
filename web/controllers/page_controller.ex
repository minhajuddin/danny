defmodule Danny.PageController do
  use Danny.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
