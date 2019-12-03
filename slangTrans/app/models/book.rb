class Book < ApplicationRecord
	has_many :slang_books
	has_many :slangs, through: :slang_books
end
