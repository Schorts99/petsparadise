# == Schema Information
#
# Table name: members
#
#  id                          :integer          not null, primary key
#  email                       :string           default(""), not null
#  encrypted_password          :string           default(""), not null
#  reset_password_token        :string
#  reset_password_sent_at      :datetime
#  remember_created_at         :datetime
#  sign_in_count               :integer          default(0), not null
#  current_sign_in_at          :datetime
#  last_sign_in_at             :datetime
#  current_sign_in_ip          :string
#  last_sign_in_ip             :string
#  name                        :string
#  last_name                   :string
#  phone                       :string
#  age                         :integer
#  reference_phone             :string
#  reference_phone2            :string
#  bad                         :boolean          default(FALSE)
#  conditions                  :boolean          default(FALSE)
#  country                     :string
#  state                       :string
#  city                        :string
#  suburb                      :string
#  street                      :string
#  home_number                 :string
#  created_at                  :datetime         not null
#  updated_at                  :datetime         not null
#  proof_file_name             :string
#  proof_content_type          :string
#  proof_file_size             :integer
#  proof_updated_at            :datetime
#  avatar_file_name            :string
#  avatar_content_type         :string
#  avatar_file_size            :integer
#  avatar_updated_at           :datetime
#  identification_file_name    :string
#  identification_content_type :string
#  identification_file_size    :integer
#  identification_updated_at   :datetime
#

class Member < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :name, format: { with: /\A[a-zA-Z + a-zA-Z + áéíóúñ ]+\z/,
            message: "is invalid , only allow letters" }, presence: true, length: { in:3..25 }

  validates :last_name, format: { with: /\A[a-zA-Z + a-zA-Z + áéíóúñ ]+\z/,
           message: "last name is invalid, only allow letters" }, presence:true, length: { in:3..25 }

  validates :phone, numericality: { only_integer: true,
             message: "is invalid" }, presence: true, length: { in: 7..10 }

  validates :age, numericality: { only_integer: true, greater_than_or_equal_to: 15, less_than_or_equal_to: 70 },
            length: { is: 2 }, presence: true

  validates :reference_phone, numericality: { only_integer: true }, length: { in: 7..10 }, presence: true

  validates :reference_phone2, numericality: { only_integer: true }, length: { in: 7..10 }, presence: true

  validates :bad, acceptance: true, presence: true

  validates :conditions, acceptance: true, presence: true

  has_attached_file :proof
  validates_attachment :proof, :content_type => {:content_type => %w(image/jpeg image/jpg image/png application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document)}
  has_attached_file :avatar
  validates_attachment :avatar, :content_type => {:content_type => %w(image/jpeg image/jpg image/png application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document)}
  has_attached_file :identification
  validates_attachment :identification, :content_type => {:content_type => %w(image/jpeg image/jpg image/png application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document)}

end
