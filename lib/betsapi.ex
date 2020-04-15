defmodule Betsapi do
  use Tesla, only: [:get], docs: false

  plug Tesla.Middleware.BaseUrl, "https://api.betsapi.com"

  @spec call(binary, binary, []) :: {:error, any} | {:ok, Tesla.Env.t()}
  def call(token, endpoint, query \\ []) do
    get endpoint, query: [token: token] ++ query
  end
end
