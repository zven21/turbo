defmodule TurboTesterWeb.Router do
  use TurboTesterWeb, :router

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

  scope "/", TurboTesterWeb do
    pipe_through :browser

    get "/", PostController, :index
    resources "/users", UserController
    resources "/posts", PostController
  end

  # Other scopes may use custom stacks.
  # scope "/api", TurboTesterWeb do
  #   pipe_through :api
  # end
end
