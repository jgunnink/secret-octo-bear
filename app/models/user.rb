class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

 	has_many :scorecards, dependent: :destroy

 	validates :name, presence: true

  # HAS BEEN TURNED OFF FOR NOW
 	# after_create :send_notification
 	# def send_notification
 	# 	AdminMailer.new_user(self).deliver
 	# end

end
