json.array!(@members) do |member|
  json.extract! member, :id, :name, :good, :nomal, :bad
  json.url member_url(member, format: :json)
end
