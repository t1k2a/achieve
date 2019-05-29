json.extract! task, :id, :user_id, :title, :context, :deadline, :charge_id, :done, :status, :created_at, :updated_at
json.url task_url(task, format: :json)
