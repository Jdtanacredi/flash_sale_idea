class User < ActiveRecord::Base
  attr_accessor :name
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  def admin?
    admin == true
  end

  #def claimed?
  #User.update_attribute(:customer_id, customer.id)
  #end
end
