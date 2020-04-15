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

  @inplay_event "v1/bet365/event"

  def inplay_event(token, fixture_id, query \\ nil) do
    case query do
      query when is_list(query) -> Betsapi.call(token, @inplay_event, query ++ [FI: fixture_id])
      _____ when true -> Betsapi.call(token, @inplay_event, [FI: fixture_id])
    end
  end
end
