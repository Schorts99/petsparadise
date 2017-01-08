class AddAttachmentProofAndVitaeToManagers < ActiveRecord::Migration[5.0]
  def change
    add_attachment :managers, :proof
    add_attachment :managers, :avatar
    add_attachment :managers, :identification
    add_attachment :managers, :vitae
  end
end
