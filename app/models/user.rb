# frozen_string_literal: true

class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  include DeviseTokenAuth::Concerns::User

  has_many :messages
  has_many :likes

  validates :name, presence: true
  validates :name, length: { maximum: 30}

end
