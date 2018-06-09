json.extract! department, :id, :name, :shortname, :link, :description, :position, :status, :created_at, :updated_at
json.url department_url(department, format: :json)
