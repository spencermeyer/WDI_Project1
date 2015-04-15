json.array!(@moves) do |move|
  json.extract! move, :id, :game_id, :number, :value, :user_id
  json.url move_url(move, format: :json)
end
