class BooksController < ApplicationController

  def index
    @books = Book.all
    @regularbooks=Book.where(Category: '1')
    @regularbooksnumber=@regularbooks.count
       @fictionbooks=Book.where(Category: '2')
       @fictionbooksnumber=@fictionbooks.count
       @novels=Book.where(Category: '3')
       @novelsnumber=@novels.count
    
  end
 
  def show
    @book = Book.find(params[:id])
    @s=@book.return.to_date-@book.created_at.to_date
    @k=@s.to_i
  end
 
  def new
    @book = Book.new
  end
 
  def edit
    @book = Book.find(params[:id])
  end
 
  def create
    
    @book = Book.new(article_params)
 
    if @book.save
      redirect_to books_path
    else
      render 'new'
    end
  end
 
  def update
    @book = Book.find(params[:id])
 
    if @book.update(article_params)
      redirect_to @book
    else
      render 'edit'
    end
  end
 def invoice
    @books = Book.all
    @regularbooks=Book.where(Category: '1')
    @regularbooksnumber=@regularbooks.count
       @fictionbooks=Book.where(Category: '2')
       @fictionbooksnumber=@fictionbooks.count
       @novels=Book.where(Category: '3')
       @novelsnumber=@novels.count
    end
 
 
 
  def destroy
    @book = Book.find(params[:id])
    @book.destroy
 
    redirect_to books_path
  end
 
  private
    def article_params
      params.require(:book).permit(:title, :return,:Category)
    end
end

