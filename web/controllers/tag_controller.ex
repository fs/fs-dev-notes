defmodule FsDev.TagController do
  use FsDev.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end