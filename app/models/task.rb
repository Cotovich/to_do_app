class Task < ApplicationRecord
  belongs_to :user
  belongs_to :list

  belongs_to :main_task, class_name: "Task", foreign_key: "main_task_id", optional: true
  has_many :subtasks, class_name: "Task", foreign_key: "main_task_id", dependent: :destroy
end