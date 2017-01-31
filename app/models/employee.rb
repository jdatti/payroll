class Employee < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :payslips

  def full_name
    return "#{salutation}" " " "#{first_name}" " " "#{last_name}".split.map(&:capitalize).join(' ')
  end

  def self.search(search)
    key = "%#{search}%"
    if search
      where(' first_name LIKE ? OR email LIKE ?', key, key)
    else
      all
    end
  end

  def is_admin?
    is_admin
  end
  
end
