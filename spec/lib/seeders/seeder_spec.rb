require 'spec_helper'

describe Seeders::Books do
  let(:seeder) { Seeders::Books }

  # it 'seeds questions' do
  #   book_title = Seeders::Books.first.title
  #   seeder.seed
  #   expect(Book.where(title: book_title)).to be_present
  # end

  it 'does not create duplicates' do
    seeder.seed
    count_after_seed = Book.count
    seeder.seed
    expect(Book.count).to eql(count_after_seed)
  end

end
