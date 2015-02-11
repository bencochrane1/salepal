class Lead < ActiveRecord::Base
    has_many :opportunities
    has_many :tasks
    has_many :notes
    has_many :emails

    belongs_to :user
end