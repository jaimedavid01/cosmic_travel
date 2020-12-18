class Mission < ApplicationRecord
  belongs_to :scientist
  belongs_to :planet
  
  validates :name, uniqueness: {case_sensitive: false, message: 'Name should be unique!'}

end
