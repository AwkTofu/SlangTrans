class Slang < ApplicationRecord
  belongs_to :user
  has_many :definitions
  has_many :slang_books
  has_many :books, through: :slang_books
end
