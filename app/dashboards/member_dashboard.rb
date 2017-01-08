require "administrate/base_dashboard"

class MemberDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    email: Field::String,
    encrypted_password: Field::String,
    reset_password_token: Field::String,
    reset_password_sent_at: Field::DateTime,
    remember_created_at: Field::DateTime,
    sign_in_count: Field::Number,
    current_sign_in_at: Field::DateTime,
    last_sign_in_at: Field::DateTime,
    current_sign_in_ip: Field::String,
    last_sign_in_ip: Field::String,
    name: Field::String,
    last_name: Field::String,
    phone: Field::String,
    age: Field::Number,
    reference_phone: Field::String,
    reference_phone2: Field::String,
    bad: Field::Boolean,
    conditions: Field::Boolean,
    country: Field::String,
    state: Field::String,
    city: Field::String,
    suburb: Field::String,
    street: Field::String,
    home_number: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    proof_file_name: Field::String,
    proof_content_type: Field::String,
    proof_file_size: Field::Number,
    proof_updated_at: Field::DateTime,
    avatar_file_name: Field::String,
    avatar_content_type: Field::String,
    avatar_file_size: Field::Number,
    avatar_updated_at: Field::DateTime,
    identification_file_name: Field::String,
    identification_content_type: Field::String,
    identification_file_size: Field::Number,
    identification_updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :id,
    :email,
    :encrypted_password,
    :reset_password_token,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :email,
    :encrypted_password,
    :reset_password_token,
    :reset_password_sent_at,
    :remember_created_at,
    :sign_in_count,
    :current_sign_in_at,
    :last_sign_in_at,
    :current_sign_in_ip,
    :last_sign_in_ip,
    :name,
    :last_name,
    :phone,
    :age,
    :reference_phone,
    :reference_phone2,
    :bad,
    :conditions,
    :country,
    :state,
    :city,
    :suburb,
    :street,
    :home_number,
    :created_at,
    :updated_at,
    :proof_file_name,
    :proof_content_type,
    :proof_file_size,
    :proof_updated_at,
    :avatar_file_name,
    :avatar_content_type,
    :avatar_file_size,
    :avatar_updated_at,
    :identification_file_name,
    :identification_content_type,
    :identification_file_size,
    :identification_updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :email,
    :encrypted_password,
    :reset_password_token,
    :reset_password_sent_at,
    :remember_created_at,
    :sign_in_count,
    :current_sign_in_at,
    :last_sign_in_at,
    :current_sign_in_ip,
    :last_sign_in_ip,
    :name,
    :last_name,
    :phone,
    :age,
    :reference_phone,
    :reference_phone2,
    :bad,
    :conditions,
    :country,
    :state,
    :city,
    :suburb,
    :street,
    :home_number,
    :proof_file_name,
    :proof_content_type,
    :proof_file_size,
    :proof_updated_at,
    :avatar_file_name,
    :avatar_content_type,
    :avatar_file_size,
    :avatar_updated_at,
    :identification_file_name,
    :identification_content_type,
    :identification_file_size,
    :identification_updated_at,
  ].freeze

  # Overwrite this method to customize how members are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(member)
  #   "Member ##{member.id}"
  # end
end
