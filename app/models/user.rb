class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  def name
    "#{first_name} #{last_name}"
  end

  validates :email, presence: true, length: { maximum: 200 }
  validates :password, presence: true, length: { minimum: 6 }

  has_many :enigma_ratings
end
