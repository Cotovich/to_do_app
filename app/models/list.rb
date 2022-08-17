class List < ApplicationRecord
  belongs_to :user
  has_many :tasks, dependent: :destroy

  def active_tasks
    active_tasks = []
    self.tasks.each do |task|
      active_tasks.push(task) if task.is_active == true
    end
    active_tasks
  end
end
