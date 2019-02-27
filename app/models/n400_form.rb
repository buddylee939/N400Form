class N400Form < ApplicationRecord
  validates :nine_digit_a_number, presence: true, length: { maximum: 9 }
end
