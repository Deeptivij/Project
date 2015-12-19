module BooksHelper
  
  def calculate_days(article)
    @d=(article.return.to_date-article.created_at.to_date).to_i
  
  end
  def books(article)
    calculate_days(article)
     @a=@a+@d
@a*1

  end
  def all_books(article)
    calculate_days(article)
    if article.Category=='1'
     @rd=@rd+@d
    @rd*1.5


elsif article.Category=='2'
  @fd=@fd+@d
@fd*3
 
elsif article.Category=='3'
   @nd=@nd+@d
@nd*1.5

end

end
 def regular_books(article)
  calculate_days(article)
  if article.Category=='1'
    if @d==1
@u=@d*2
elsif @d>=2
@g=@g+2*1
@p=@p+(@d-2)
@p*1.5
end
@gw=@g+@p
end
if article.Category=='3'
  if @d==1
@y=@d*4.5
elsif @d==2
@y1=@d*4.5
elsif @d>=3
@y2=@y2+@d
@y2*1.5
end
end


  end
  def rental_points
    
    
      @regularbooksnumber=Book.where(Category: '1').count
      @fictionbooksnumber=Book.where(Category: '2').count 
     @trental= @regularbooksnumber+@fictionbooksnumber
    
  end
  def novel_points(article)
    
    calculate_days(article)
    if @d==1
      @rent=0
    elsif @d>=2
      @rent=@d/2
      @rentt=@rent.floor
      @trent=@trent+@rent
    end
  end
end

