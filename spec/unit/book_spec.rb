require 'spec_helper'

describe Book do
  subject(:book) { Book.new }

  let(:page) { Page.new(1) }

  describe '#page' do
    before { book.add_page(page) }

    context 'when page exists' do
      it 'should return page' do
        expect(book.page(1)).to be(page)
      end
    end

    context 'when page does not exist' do
      it 'should raise error' do
        expect { book.page(2) }.to raise_error(
          RuntimeError, "Book does not have a page with number: 2"
        )
      end
    end
  end

  describe '#add_page' do
    it 'should return self' do
      expect(book.add_page(page)).to be(book)
    end

    it 'should add page to book' do
      book.add_page(page)
      expect(book.pages).to include(page)
    end

    it 'should add page to book index' do
      book.add_page(page)
      expect(book.index).to include(1 => page)
    end
  end
end
