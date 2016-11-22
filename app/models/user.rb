class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  acts_as_messageable

  def mailboxer_email(object)
    email
  end

  ROLES = %w[i_want_to_seek_treatment i_want_to_help].freeze

end
