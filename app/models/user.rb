class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, #:registerable,
         :recoverable, :rememberable, :trackable, #:validatable, 
      :lockable, :lock_strategy => :none, :unlock_strategy => :none
  enju_leaf_user_model
  enju_circulation_user_model
  enju_message_user_model

end
