defmodule Rubberstamp.Router do
  use Rubberstamp.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Rubberstamp do
    pipe_through :api 

    get "/event_handler", EventController, :index
    post "/event_handler", EventController, :update
  end

  # Other scopes may use custom stacks.
  # scope "/api", Rubberstamp do
  #   pipe_through :api
  # end
end
