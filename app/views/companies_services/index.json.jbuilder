json.array!(@companies_services) do |companies_service|
  json.extract! companies_service, :id
  json.url companies_service_url(companies_service, format: :json)
end
