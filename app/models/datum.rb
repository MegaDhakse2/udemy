class Datum < ApplicationRecord
  PASSWORD_FORMAT =
    /\A
  (?=.{8,})          # Must contain 8 or more characters
  (?=.*\d)           # Must contain a digit
  (?=.*[a-z])        # Must contain a lower case character
  (?=.*[A-Z])        # Must contain an upper case character
  (?=.*[[:^alnum:]]) # Must contain a symbol
/x
  # pendings here
  # first name, second name and email validations

  validates :firstName, presence: true #, format: { with: NAME_FORMAT }
  validates :lastName, presence: true #, length: {maximum: 50}, format: { with: ConstantData::VALID_EMAIL_REGEX }, if: :method_name?
  validates :email, presence: true, uniqueness: true #, length: { maximum: 15 } , format: { with: ConstantData::VALID_EMAIL_REGEX }, if: :method_name?
end
