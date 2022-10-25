class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :cursos
  has_many :bookings
       
  
       
  def admin?
    admin
  end
 


  def self.search_by(search_term)
          where("tipo = :search_term", search_term: search_term)
  end

end
