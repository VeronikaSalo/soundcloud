class AddSongUserTable < ActiveRecord::Migration
  def change
    create_table :songs_users, id: false do |t|
      t.belongs_to :song, index: true
      t.belongs_to :user, index: true
    end
  end
end
