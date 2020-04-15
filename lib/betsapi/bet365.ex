defmodule Betsapi.Bet365 do
  @inplay "v1/bet365/inplay"

  @spec inplay(binary, [any]) :: {:error, any} | {:ok, Tesla.Env.t()}
  def inplay(token, query \\ []) do
    token
      |> Betsapi.call(@inplay, query)
  end

  @inplay_filter "v1/bet365/inplay_filter"

  @spec inplay_filter(binary, [any]) :: {:error, any} | {:ok, Tesla.Env.t()}
  def inplay_filter(token, query \\ []) do
    token
      |> Betsapi.call(@inplay_filter, query)
  end

  @inplay_event "v1/bet365/event"

  @spec inplay_event(binary, integer, [any]) :: {:error, any} | {:ok, Tesla.Env.t()}
  def inplay_event(token, fixture_id, query \\ []) do
    Betsapi.call(token, @inplay_event, query ++ [FI: fixture_id])
  end

  @upcoming "v1/bet365/upcoming"

  @spec upcoming(binary, integer, [any]) :: {:error, any} | {:ok, Tesla.Env.t()}
  def upcoming(token, sport_id, query \\ []) do
    Betsapi.call(token, @upcoming, query ++ [sport_id: sport_id])
  end
end
