require 'spec_helper'

describe Book do
  subject(:book) { Book.new }

  describe '#add_page' do
    let(:page) { Page.new(1, 'test') }

    it 'should return self' do
      expect(book.add_page(page)).to be(book)
    end

    it 'should add page to book' do
      book.add_page(page)
      expect(book.page(page.number)).to be(page)
    end
  end

end
