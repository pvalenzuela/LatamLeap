class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :name, :focus_ids, :company_name, :location, :position
  # attr_accessible :title, :body

  has_and_belongs_to_many :focuses, :class_name => "Focus"
  belongs_to :stage

  validates_presence_of :name, :company_name, :position, :location

end
