require 'spec_helper'

describe Categorization do
  it { should validate_presence_of :book_id}
  it { should validate_numericality_of :book_id}
  it { should validate_presence_of :category_id}
  it { should validate_numericality_of :category_id}
end
