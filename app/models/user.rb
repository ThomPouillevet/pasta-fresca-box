class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :formule
  has_many :orders

  validates :name, presence: true, uniqueness: true
  validates :city, presence: true
  validates :phone, presence: true

end
