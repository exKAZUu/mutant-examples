require 'spec_helper'

describe Book, '#<<' do
  subject(:book) { Book.new }
  let(:page)     { Page.new(1) }

  it 'should return self' do
    expect(book << page).to be(book)
  end

  it 'should add page to book' do
    book << page
    expect(book.pages).to include(page)
  end
end
