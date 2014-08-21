class Tag < ActiveRecord::Base

	has_many :postags
	has_many :posts, :through => :postags
end
