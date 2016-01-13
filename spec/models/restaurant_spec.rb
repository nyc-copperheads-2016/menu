require 'rails_helper'

RSpec.describe Restaurant, type: :model do
  it { should have_many(:locations) }
  it { should have_many(:menus) }
end
