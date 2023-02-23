# 企業テーブル
class CreateComapanies < ActiveRecord::Migration[7.0]
  def change
    create_table :comapanies do |t|
      # 会社名
      t.string :name
      # TEL
      t.string :tel
      # 住所
      t.string :address
      # 無効フラグ
      t.boolean :invalid_flag

      # 登録・更新日時
      t.timestamps
    end
  end
end
