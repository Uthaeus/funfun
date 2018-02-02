class Problem < ApplicationRecord

  validates_presence_of :title, :description, :body

end
