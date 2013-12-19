class Categorization < ActiveRecord::Base
  has_many :books
  has_many :categories

  validates_presence_of :category_id
  validates_presence_of :book_id
  validates_numericality_of :book_id
  validates_numericality_of :category_id
end
