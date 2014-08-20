json.array!(@game_sessions) do |game_session|
  json.extract! game_session, :id, :name
  json.url game_session_url(game_session, format: :json)
end
