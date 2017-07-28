class User < ApplicationRecord

	has_many :marks
	enum role: [:student, :faculty, :principal]
  after_initialize :set_default_role, :if => :new_record?


  def set_default_role
    self.role ||= :student
  end
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
