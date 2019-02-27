class FieldOffice < ApplicationRecord
  def state_and_name
    "#{state} - #{name}"
  end  
end
