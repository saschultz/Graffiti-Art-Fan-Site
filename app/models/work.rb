class Work < ActiveRecord::Base
  validates(:artist, :location, :link, :presence => true)
end
