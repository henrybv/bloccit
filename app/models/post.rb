class Post < ActiveRecord::Base
	belongs_to :topic
	has_many :comments, dependent: :destroy
end
