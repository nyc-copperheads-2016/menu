require 'rails_helper'

RSpec.describe Item, type: :model do
  it { should belong_to(:section) }
  it { should have_many(:favorites) }
  it { should have_many(:users).through(:favorites) }
end
