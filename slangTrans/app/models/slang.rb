class Slang < ApplicationRecord
  belongs_to :user
  has_many :definitions, dependent: :destroy
  has_many :slang_books
  has_many :books, through: :slang_books
  accepts_nested_attributes_for :definitions, :reject_if => proc {|attributes|
  attributes.all? {|k,v| v.blank?}
}
end
