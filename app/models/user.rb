class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :debriefs
  has_many :comments
  has_many :viewed_comments

  def fullName
    firstName + " " + lastName
  end

  def self.pilots
    with_role(:pilot)
  end
end
