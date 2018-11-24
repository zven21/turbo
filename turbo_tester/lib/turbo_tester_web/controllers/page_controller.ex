defmodule TurboTesterWeb.PageController do
  use TurboTesterWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
