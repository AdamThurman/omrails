class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  # attr_accessible :title, :body

  # Added to fix the error ActiveModel::MassAssignmentSecurity::Error when going to the signup page
  attr_accessible :email, :password, :password_confirmation, :remember_me, :provider, :uid, :as => [:default, :admin]
end
