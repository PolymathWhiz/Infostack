class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  #-------------------- Relationships -------------------------
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
  
  #--------------------- Validations --------------------------
  validates_presence_of :username
end
