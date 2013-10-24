class Comment < ActiveRecord::Base
	belongs_to :user
	delegate :email, :to => :user, :allow_nil => true
	belongs_to :story
end
