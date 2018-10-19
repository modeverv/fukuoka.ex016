defmodule SampleDbWeb.PageController do
  use SampleDbWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
