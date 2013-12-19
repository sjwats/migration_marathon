require 'spec_helper'

describe Checkout do
  it { should validate_presence_of :book }
  it { should validate_numericality_of :book_id}
  it { should validate_presence_of :patron }
  it { should have_valid(:patron).when("George", "Jim") }
end
