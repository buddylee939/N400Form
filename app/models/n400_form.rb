class N400Form < ApplicationRecord
  belongs_to :user
  validates :nine_digit_a_number, presence: true, length: { maximum: 9 }
  validates :social_security_num, presence: true, length: { maximum: 9 }
  has_many :other_names, inverse_of: :n400_form, dependent: :destroy
  accepts_nested_attributes_for :other_names, reject_if: :all_blank, allow_destroy: true

  # enum gender: { male: 0, female: 1, other: 2 }
end
