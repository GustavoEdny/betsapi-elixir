defmodule Betsapi do
  use Tesla, only: [:get], docs: false

  plug Tesla.Middleware.BaseUrl, "https://api.betsapi.com"

  def call(token, endpoint, query \\ nil) do
    case query do
      query when is_list(query) -> get endpoint, query: [token: token] ++ query
      _____ when true -> get endpoint, query: [token: token]
    end
  end
end
