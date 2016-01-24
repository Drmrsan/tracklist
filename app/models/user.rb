class User < ActiveRecord::Base
	has_many :task_lists, dependent: :nullify
	has_many :task_items, dependent: :nullify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
