require 'spec_helper'

describe Seeders::Genres do
  let(:seeder) { Seeders::Genres }

  # it 'seeds questions' do
  #   book_title = Seeders::Books.first.title
  #   seeder.seed
  #   expect(Book.where(title: book_title)).to be_present
  # end

  it 'does not create duplicates' do
    seeder.seed
    count_after_seed = Genre.count
    seeder.seed
    expect(Genre.count).to eql(count_after_seed)
  end

end
