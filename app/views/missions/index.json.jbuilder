json.array!(@missions) do |mission|
  json.extract! mission, :id, :name, :description, :difficulty, :exp, :next_mission, :last_mission
  json.url mission_url(mission, format: :json)
end
