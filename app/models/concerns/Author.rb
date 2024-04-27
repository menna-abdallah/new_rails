class Author < ApplicationRecord
    validates :name, presence: true
    validates :DOB, presence: true
    validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP } 
    validates :phone_number, presence: true
  end