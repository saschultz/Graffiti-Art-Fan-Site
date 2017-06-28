class Work < ActiveRecord::Base
  validates(:artist, :location, :link, :presence => true)
  before_save(:default_rating)
  after_create(:default_rating)

  def default_rating
    self.rating = 0
  end

  def rate_post(value)
    if value == '1'
      self.rating += 1
    elsif value == '2'
      self.rating += 2
    elsif value == '3'
      self.rating += 3
    elsif value == '4'
      self.rating += 4
    elsif value == '5'
      self.rating += 5
    end
  end
end
