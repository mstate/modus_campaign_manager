json.array!(@cases) do |case|
  json.extract! case, :id, :campaign_id, :phone_number, :metadata_hash, :state, :fsa, :language, :offset_hours_from_eastern
  json.url case_url(case, format: :json)
end
