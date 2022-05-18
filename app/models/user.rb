class User < ApplicationRecord
  authenticates_with_sorcery!
  has_many :apps
  has_many :records
  validates :password, length: { minimum: 3 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }
  validates :email, :name, uniqueness: true
  validates :email, :name, presence: true
end