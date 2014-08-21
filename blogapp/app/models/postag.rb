class Postag < ActiveRecord::Base
	belongs_to :tag
	belongs_to :post
end
