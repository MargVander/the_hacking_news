class ComComment < ApplicationRecord
	belongs_to :user
	belongs_to :comment
end
