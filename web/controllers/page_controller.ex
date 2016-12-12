defmodule TripPlanner.PageController do
  use TripPlanner.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
