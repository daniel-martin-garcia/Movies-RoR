class Review < ActiveRecord::Base
	validates :reviewer, presence: true
	validates :content, presence: true
	belongs_to :movie
end
