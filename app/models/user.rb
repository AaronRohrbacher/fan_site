class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

## THIS IS KEY FOR LOGGING IN WITH USERNAME INSTEAD OF EMAIL:
  def email_required?
    false
  end

  def email_changed?
    false
  end
end
