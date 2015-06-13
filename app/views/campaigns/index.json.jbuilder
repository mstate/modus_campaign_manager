json.array!(@campaigns) do |campaign|
  json.extract! campaign, :id, :name, :description, :active, :case_selector_code
  json.url campaign_url(campaign, format: :json)
end
