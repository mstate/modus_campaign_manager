json.array!(@calls) do |call|
  json.extract! call, :id, :jobs_id, :final, :disposition, :results_hash, :case_id
  json.url call_url(call, format: :json)
end
