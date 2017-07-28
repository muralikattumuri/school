json.extract! student, :id, :name, :email, :phonenumber, :created_at, :updated_at
json.url student_url(student, format: :json)
