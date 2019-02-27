class N400Form < ApplicationRecord
  validates :nine_digit_a_number, presence: true, length: { maximum: 9 }
  validates :social_security_num, presence: true, length: { maximum: 9 }
  # enum gender: [:undisclosed, :female, :male, :other]
end
