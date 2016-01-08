require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_many(:favorites) }
  it { should have_many(:items).through(:favorites) }

end
