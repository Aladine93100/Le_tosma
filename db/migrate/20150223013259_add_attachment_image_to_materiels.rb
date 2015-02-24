class AddAttachmentImageToMateriels < ActiveRecord::Migration
  def self.up
    change_table :materiels do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :materiels, :image
  end
end
