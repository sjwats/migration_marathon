require 'spec_helper'

describe Genre do
  it {should validate_presence_of :name}
  it {should validate_uniqueness_of :name}
  it { should have_many(:books).through(:categorizations) }
end
