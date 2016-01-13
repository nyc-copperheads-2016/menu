require 'rails_helper'

RSpec.describe Section, type: :model do
  it { should belong_to(:menu) }
  it { should have_many(:items) }
end
