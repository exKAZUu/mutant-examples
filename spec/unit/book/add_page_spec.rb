require 'spec_helper'
require './lib/book'

describe Book, '#add_page' do
  subject(:book) { Book.new }

  it "adds a page" do
    page = mock('page')

    book.add_page page

    expect(book.pages).to include(page)
  end
end
