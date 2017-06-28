class Work < ActiveRecord::Base
  validates(:artist, :location, :link, :presence => true)
  after_create(:default_rating)

  def default_rating
    self.rating = 0
  end
  
end
