class Scientist < ApplicationRecord
    has_many :missions, dependent: :delete_all
    has_many :planets, through: :missions

    validates :name, uniqueness: {case_sensitive: false, message: 'Name should be unique!'}

end
