
class BooksController <  ApplicationController
  def index
    @books = Book.all
    @book = Book.first
    @publishers = Publisher.all
  #  puts "THIS IS INDEX PAGE #{params[:book]}"
    #获取books 的   publisher_id
    puts "THIS IS @BOOK PROPERTY  #{Publisher.where("id=?",@book.publisher_id).first}"
  end

  def new
    @book = Book.new
  end

  def create

    book = Book.new params[:book]
    book.save
    # redirect_to是发起了一次http 请求 ，而render 没有发起http请求
    #  puts "==============#{'这是书'}#{book.inspect}"
      puts "THIS IS CREATE ACTION #{params[:book]}"
    #  从new页面跳转过来的数据，无主键 id
    redirect_to book
  end

  def show
    puts "this is SHOW PAGE #{params}"
    @book = Book.find params[:id]
    @publisher = Publisher.find @book.publisher_id
  end

  def edit
    puts "THIS IS EDIT PAGE #{params}"
    @book = Book.find params[:id]
    @publisher = Publisher.find @book.publisher_id
  end

  def update
    @book = Book.find params[:id]

  #  puts "== @book( from db): #{@book.inspect}"
  #  puts "== params[:book] (from form) : #{params.inspect}"

  #  @book.update(publisher_id: @book.publisher_id)
    #  因为更新是从form表单中来的，对象是:book
    @book.update(publisher_id: params[:book][:publisher_id])

    redirect_to book_path(@book)
  end

  def destroy
    puts "THIS IS DELETE PAGE #{params}"
    render :text => "this is delete"
  end
end
