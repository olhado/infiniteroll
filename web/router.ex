defmodule Infiniteroll.Router do
  use Phoenix.Router

  scope "/" do
    # Use the default browser stack.
    pipe_through :browser

    get "/", Infiniteroll.PageController, :index, as: :pages
    post "/roll", Infiniteroll.PageController, :roll
  end

  # Other scopes may use custom stacks.
  # scope "/api" do
  #   pipe_through :api
  # end
end
