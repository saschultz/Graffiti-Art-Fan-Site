require 'rails_helper'

describe Work do
  it { should validate_presence_of :artist }
  it { should validate_presence_of :location }
  it { should validate_presence_of :link }
  it { is_expected.to callback(:default_rating).before(:save) }
  it { is_expected.to callback(:default_rating).after(:create) }

  describe '#rate_post' do
    it 'increases the rating based off of the button clicked' do
      work = Work.create(artist: 'Keith Haring', location: 'NYC Subway', link: 'www.test.com')
      work.rate_post('2')
      expect(work.rating).to(eq 2)
    end
  end
end
