defmodule HangryWeb.PageController do
  use HangryWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
