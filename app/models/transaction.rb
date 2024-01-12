# app/models/transaction.rb

class Transaction < ApplicationRecord
  validates :name, presence: true
  validates :amount, presence: true
  # Add any other validations or associations as needed
end
