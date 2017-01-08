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

require 'test_helper'

class MemberTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
