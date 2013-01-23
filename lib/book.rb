class Page < Struct.new(:number, :content)
end

class Book
  attr_reader :pages

  def initialize
    @pages = []
    @index    = {}
  end

  def page(number)
    @index.fetch(number) {
      raise "Book does not have a page with number: #{number}"
    }
  end

  def <<(page)
    @pages << page
    @index[page.number] = page
    self
  end
end
