# -*- encoding : utf-8 -*-
class User
  include Mongoid::Document
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  field :email
  field :username
  validates_presence_of :username
  validates_uniqueness_of :username
  validates_length_of :username,:within=>5..20
  validates_format_of :username,with:/^(\w|\.)+$/
  validates_format_of :email,with:/\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  validates_uniqueness_of :email, :case_sensitive => false
  attr_accessible :username, :email, :password, :password_confirmation, :remember_me
end
