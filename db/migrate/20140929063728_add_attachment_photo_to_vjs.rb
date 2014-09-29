class AddAttachmentPhotoToVjs < ActiveRecord::Migration
  def self.up
    change_table :vjs do |t|
      t.attachment :photo
    end
  end

  def self.down
    drop_attached_file :vjs, :photo
  end
end
