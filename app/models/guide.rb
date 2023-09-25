class Guide < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :history
  belongs_to :sex
  belongs_to :style

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :guidances
end
