# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string
#  last_sign_in_ip        :string
#  name                   :string
#  last_name              :string
#  phone                  :string
#  conditions             :boolean          default(FALSE)
#  country                :string
#  state                  :string
#  city                   :string
#  suburb                 :string
#  street                 :string
#  home_number            :string
#  uid                    :string
#  provider               :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable,
         :omniauth_providers => [:facebook]

  validates :email, email: true , length: {in: 8..50}

  validates :name, format: { with: /\A[a-zA-Z + a-zA-Z + áéíóúñ ]+\z/,
            message: "is invalid , only allow letters" }, presence: true, length: { in:3..25 }

  validates :last_name, format: { with: /\A[a-zA-Z + a-zA-Z + áéíóúñ ]+\z/,
           message: "last name is invalid, only allow letters" }, presence: true, length: { in: 3..25 }

  validates :phone, numericality: { only_integer: true,
            message: "is invalid" }, presence: true, length: { in: 7..10 }

  validates :conditions, acceptance: true , presence: true

  def self.from_omniauth(auth)
    where(provider: auth[:provider], uid: auth[:uid]).first_or_create do |user|
      if auth[:info]
        user.email = auth[:info][:email]
      end
      user.password = Devise.friendly_token[0,24]
    end
  end
end
