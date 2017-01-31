class AddAttachmentProofAndVitaeToMembers < ActiveRecord::Migration[5.0]
  def change
    add_attachment :members, :proof
    add_attachment :members, :avatar
    add_attachment :members, :identification
  end
end
