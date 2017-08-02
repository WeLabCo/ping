Ping::Engine.routes.draw do
  get "/ping", to: "application#ping", as: :ping
end
