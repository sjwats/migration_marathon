class Book < ActiveRecord::Base
  belongs_to :author

  validates_presence_of :title
  validates_presence_of :author
  validates_numericality_of :rating, :only_integer => true, :allow_nil => true,
    :greater_than_or_equal_to => 0,
    :less_than_or_equal_to => 100
end
