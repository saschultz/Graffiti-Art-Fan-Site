class Work < ActiveRecord::Base
  validates(:artist, :location, :link, :presence => true)
  before_save(:default_rating)
  after_create(:default_rating)

  def default_rating
    self.rating = 0
  end

end
