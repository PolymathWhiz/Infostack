class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  extend FriendlyId
  friendly_id :username, use: [:slugged, :finders]

  #-------------------- Relationships -------------------------
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy

  #--------------------- Validations --------------------------
  validates :username, format: { with: /\A[a-zA-Z0-9]+\Z/ }, presence: true, uniqueness: true
  validates :full_name, presence: true
end
