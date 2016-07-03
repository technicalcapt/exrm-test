defmodule ExrmTest.PageController do
  use ExrmTest.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
