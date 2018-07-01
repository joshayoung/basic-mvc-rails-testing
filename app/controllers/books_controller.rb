class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  #Book Controller
  def show
    @book = Book.find_by(id: params[:id])
  end

  def new
    @book = Book.new
  end

  def edit
    @book = Book.find_by(id: params[:id])
  end

  def create
    @book = Book.new(parameters)
    if @book.save
      flash[:notice] = "Book successfully created"
      redirect_to books_url
    else
      render :new
    end
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(parameters)
      flash[:notice] = "Book successfully updated!"
      redirect_to(books_url)
    else
      render :edit
    end
  end

  def destroy
    Book.find(params[:id]).destroy
    redirect_to(books_url)
  end

private

  def parameters
    {
      title: params[:book][:title],
      word_count: params[:book][:word_count],
      description: params[:book][:description]
    }
  end
end
