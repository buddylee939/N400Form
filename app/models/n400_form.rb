class N400Form < ApplicationRecord
  serialize :eligibility, JSON
  serialize :other_explain, JSON
  serialize :gender, JSON
  serialize :yes_or_no, JSON

  enum status: { pending: 0, checked: 1, approved: 2, rejected: 3 }

  belongs_to :user
  validates :nine_digit_a_number, presence: true, length: { maximum: 9 }
  validates :social_security_num, presence: true, length: { maximum: 9 }
  has_many :other_names, inverse_of: :n400_form, dependent: :destroy
  accepts_nested_attributes_for :other_names, reject_if: :all_blank, allow_destroy: true

  ELIGIBILITY =  [
    "Have been a lawful permanent resident of the United States for at least 5 years.",
    "Have been a lawful permanent resident of the United States for at least 3 years. In addition, you have been married to and living with the same U.S. citizen spouse for the last 3 years, and your spouse has been a U.S. citizen for the last 3 years at the time you filed your Form N-400.",
    "Are a lawful permanent resident of the United States and you are the spouse of a U.S. citizen and your U.S. citizen spouse is regularly engaged in specified employment abroad. (See the Immigration and Nationality Act (INA) section 319(b).) If your residential address is outside the United States and you are filing under Section 319(b), select the USCIS Field Office from the list below where you would like to have your naturalization interview:",
    "Are applying on the basis of qualifying military service.",
    "Other (Explain):"
  ] 

  OTHER_EXPLAIN = [
    "RELIGIOUS DUTIES",
    "EMPLOYMENT ABROAD - MEDIA ORGANIZATION",
    "SURVIVING SPOUSE OF MILITARY US CITIZEN",
    "NON U.S. CITIZEN NATIONALS RESIDING IN OUTLYING POSSESSIONS",
    "SERVICE ON U.S. VESSEL"
  ]

  GENDER = [
    "Female",
    "Male"
  ]

  YES_OR_NO = [
    "Yes",
    "No"
  ]

end

