json.extract! course, :id, :title, :details, :student_since, :tenant_id, :created_at, :updated_at
json.url course_url(course, format: :json)