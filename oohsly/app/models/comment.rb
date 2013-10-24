class Comment < ActiveRecord::Base
	belongs_to :user
	delegate :email, :created_at, :to => :user, :allow_nil => true
	belongs_to :story
end
