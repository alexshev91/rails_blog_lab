class Post < ActiveRecord::Base

	has_many :postags
	has_many :tags, :through => :postags
	has_many :comments
end
