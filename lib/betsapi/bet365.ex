defmodule Betsapi.Bet365 do
  @inplay "v1/bet365/inplay"

  @spec inplay(binary, list | nil) :: {:error, any} | {:ok, Tesla.Env.t()}
  def inplay(token, query \\ nil) do
    token
      |> Betsapi.call(@inplay, query)
  end

  @inplay_filter "v1/bet365/inplay_filter"

  @spec inplay_filter(binary, list | nil) :: {:error, any} | {:ok, Tesla.Env.t()}
  def inplay_filter(token, query \\ nil) do
    token
      |> Betsapi.call(@inplay_filter, query)
  end
end
