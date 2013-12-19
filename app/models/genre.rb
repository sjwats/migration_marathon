class Genre < ActiveRecord::Base
  has_many :categorizations
  has_many :books,
    through: :categorizations

  validates_presence_of :name
  validates_uniqueness_of :name

end
