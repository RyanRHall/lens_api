class CreateAnnotations < ActiveRecord::Migration[5.0]
  def change
    create_table :annotations do |t|
      t.integer :article_id
      t.integer :lens_id
      t.string :ref_text
      t.string :comment
      t.boolean :summary, default: false
      t.integer :rating

      t.timestamps
    end
  end
end
