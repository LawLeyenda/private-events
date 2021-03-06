class User < ApplicationRecord
  has_many events, dependent: :destroy
  
  validates :name, presence: true, length: {maximum: 20}, uniqueness: {case_sensitive: false}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: {maximum: 30}, format: { with: VALID_EMAIL_REGEX}, uniqueness: {case_sensitive: false}
end
