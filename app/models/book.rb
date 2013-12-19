require 'pry'

class Book < ActiveRecord::Base
  has_many :checkouts
  has_many :categorizations
  has_many :genres,
    through: :categorizations #sets up the join between the tables for you

  validates_presence_of :title
  validates_presence_of :author
  validates_numericality_of :rating, :only_integer => true, :allow_nil => true, :allow_blank => true,
    :greater_than_or_equal_to => 0,
    :less_than_or_equal_to => 100 #could use validates inclusion instead

end

