require 'spec_helper'

describe Categorization do
  it { should validate_presence_of :book_id }
  it { should validate_numericality_of :book_id }
  it { should validate_presence_of :genre_id }
  it { should validate_numericality_of :genre_id }
  it { should belong_to :book }
  it { should belong_to :genre }
end
