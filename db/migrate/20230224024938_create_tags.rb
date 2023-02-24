class CreateTags < ActiveRecord::Migration[7.0]
  def change
    create_table :tags do |t|
      # class
      t.string :type
      # 親id
      t.integer :parent_id
      # キー
      t.string :key
      # 値
      t.string :value
      # タイムスタンプ
      t.timestamps
    end
  end
end
