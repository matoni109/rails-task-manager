class Task < ApplicationRecord
  validates :title, presence: true

  def completed!
    completed = true
  end

end
