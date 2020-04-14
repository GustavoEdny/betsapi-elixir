defmodule Betsapi.Bet365 do
  @inplay "v1/bet365/inplay"

  @spec inplay(binary, list | nil) :: {:error, any} | {:ok, Tesla.Env.t()}
  def inplay(token, query \\ nil) do
    token
      |> Betsapi.call(@inplay, query)
  end
end
