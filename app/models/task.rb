class Task < ActiveRecord::Base
    belongs_to :lead
    belongs_to :user
end
