class Tag < ApplicationRecord
  # -------------------------
  # リレーション設定
  # -------------------------
  belongs_to :post, optional: true

  # -------------------------------
  # カラム情報
  # -------------------------------
  # タグキー
  attribute :key, :string
  # タグ値
  attribute :value, :string

  # -------------------------------
  # バリデーション
  # -------------------------------
  # タグキー(必須、MAX50文字)
  validates :key, presence: true, length: { maximum: 50 }
  # タグ値(必須、MAX50文字)
  validates :value, presence: true, length: { maximum: 50 }

end
