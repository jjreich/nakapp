class User < ApplicationRecord
  rolify

  after_save :assign_roles
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :debriefs
  has_many :comments
  has_many :viewed_comments
  has_many :viewed_debriefs

  def fullName
    firstName + " " + lastName
  end

  def self.pilots
    with_role(:pilot)
  end

  def assign_roles 
    if self.pilot_role
      self.add_role(:pilot) 
    else
      self.remove_role(:pilot)
    end

    if self.maint_role
      self.add_role(:maint) 
    else
      self.remove_role(:maint)
    end

    if self.ops_role
      self.add_role(:ops) 
    else
      self.remove_role(:ops)
    end

    if self.team_blue_role
      self.add_role(:team_blue) 
    else
      self.remove_role(:team_blue)
    end

    if self.flight_support_role
      self.add_role(:flight_support) 
    else
      self.remove_role(:flight_support)
    end

    if self.admin_role
      self.add_role(:admin) 
    else
      self.remove_role(:admin)
    end
  end
end
