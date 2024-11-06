class Book
  attr_accessor :title, :author, :pages

  def initialize(title, author, pages) # Constructor
    @title = title
    @author = author
    @pages = pages
    puts "Book created with title: #{title}, author: #{author}, and pages: #{pages}"
  end

  def isNovel
    return true if @pages > 300

    false
  end

  # Ternary example of isNovel
  def isNovelTernary
    @pages > 300
  end

  def to_string
    "Title: #{title}, Author: #{author}, Pages: #{pages}"
  end
end

faveBook = Book.new('Harry Potter', 'JK Rowling', 200)
puts faveBook.title
puts faveBook.author
puts faveBook.pages
# Change the title of the book basically setter
faveBook.title = 'Lord of the Rings'
puts faveBook.title

# Prints the memory location of the object not the object itself
puts faveBook

# How to print the object itself
puts faveBook # needs to be overridden
puts faveBook.to_string # I chose to not override to_s but instead make a new method to_string
puts faveBook.isNovel
puts faveBook.isNovelTernary
