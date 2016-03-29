defmodule Rubberstamp.EventController do
  use Rubberstamp.Web, :controller

  def index(conn, _params) do
    conn |>
    send_resp 200, "Yeah son!"
  end
end
