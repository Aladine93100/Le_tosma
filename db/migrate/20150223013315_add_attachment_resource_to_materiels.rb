class AddAttachmentResourceToMateriels < ActiveRecord::Migration
  def self.up
    change_table :materiels do |t|
      t.attachment :resource
    end
  end

  def self.down
    remove_attachment :materiels, :resource
  end
end
