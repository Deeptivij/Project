class Book < ActiveRecord::Base
belongs_to:user
validates :date_validation,presence: true



def date_validation
  if self[:return] < Date.today
    errors[:return] << "Error!!!CANNOT PUT PAST DATE KINDLY ENTER VALID DATE"
    return false
  else
    return true
  end
end

end
