class Checkout < ActiveRecord::Base
  has_one :book

  validates_numericality_of :book_id
  validates_presence_of :book
  validates_presence_of :patron
end
