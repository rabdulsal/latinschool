class CreateArtifacts < ActiveRecord::Migration
  def change
    create_table :artifacts do |t|
      t.string :title
      t.string :contributors
      t.text :typed_text
      t.attachment :video
      t.attachment :uploaded_text
      t.attachment :image
      t.attachment :audio

      t.timestamps
    end
  end
end
