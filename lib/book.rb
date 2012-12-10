class Book
  attr_reader :pages

  def initialize(pages = [])
    @pages = pages
  end

  def add_page(page)
    @pages << page
  end

end
