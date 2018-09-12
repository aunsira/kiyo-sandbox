defmodule KiyoSandboxWeb.Router do
  use KiyoSandboxWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", KiyoSandboxWeb do
    pipe_through :api
    resources "/users", UserController, except: [:new, :edit]
  end
end
