json.array!(@jobs) do |job|
  json.extract! job, :id, :title, :body, :author, :closing_date
  json.url job_url(job, format: :json)
end
