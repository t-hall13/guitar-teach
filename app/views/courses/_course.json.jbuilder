json.extract! course, :id, :title, :details, :expected_completion_date, :tenant_id, :created_at, :updated_at
json.url course_url(course, format: :json)