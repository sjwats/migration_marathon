class Categorization < ActiveRecord::Base
  belongs_to :book
  belongs_to :genre

  validates_presence_of :genre_id
  validates_presence_of :book_id
  validates_numericality_of :book_id
  validates_numericality_of :genre_id
end
