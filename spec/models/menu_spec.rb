require 'rails_helper'

RSpec.describe Menu, type: :model do
  it { should belong_to(:restaurant) }
  it { should have_many(:sections) }
  it { should have_many(:items).through(:sections) }
end
