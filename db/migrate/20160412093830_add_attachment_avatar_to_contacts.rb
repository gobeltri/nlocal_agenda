class AddAttachmentAvatarToContacts < ActiveRecord::Migration
  def self.up
    change_table :contacts do |t|
      t.attachment :avatar
    end
    remove_column :contacts, :avatar_url
  end

  def self.down
    remove_attachment :contacts, :avatar
    add_column :contacts, :avatar_url
  end
end
