require 'rails_helper'

describe Work do
  it { should validate_presence_of :artist }
  it { should validate_presence_of :location }
  it { should validate_presence_of :link }
  it { is_expected.to callback(:default_rating).after(:create) }

end
