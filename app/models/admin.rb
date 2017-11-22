class Admin < ApplicationRecord
  enum role: [:full_access, :restricted_access]

  scope :with_full_access, -> {where(role: 0)}

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end