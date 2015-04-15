json.array!(@games) do |game|
  json.extract! game, :id, :user_id, :opponent_id, :diff, :result
  json.url game_url(game, format: :json)
end
