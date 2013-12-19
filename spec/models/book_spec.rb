require 'spec_helper'

describe Book do
  it { should validate_presence_of :title}
  it { should validate_presence_of :author}
  it { should validate_numericality_of :rating}
  it { should have_valid(:rating).when(0, 20, 100) }
  it { should_not have_valid(:rating).when(-1, "ten", 101) }

end
