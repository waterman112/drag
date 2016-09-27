class BooksController < ApplicationController
  def index
   @books = Book.all
#   render plain: params[:book].inspect
  end

  def new

  end

  def create
   # render plain: params[:book].inspect
    #@book = Book.new( book_params)
    #@book.save
    @book = Book.create(book_params)
    redirect_to @book
  end

  def edit
    @book = Book.find(params[:id])
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy

    redirect_to books_path
  end

  def show
    @book = Book.find(params[:id])
  end

  def update

    # 这里可做个实验，关于模型实例变量的作用域问题

    @book = Book.find(params[:id])
    @book.save

    redirect_to @book
  end

  private
    def book_params
      params.require(:book).permit(:Name,:Author)
    end

end

















