class Comapany < ApplicationRecord

  # -------------------------------
  # カラム情報
  # -------------------------------
  # 企業名
  attribute :name, :string
  # TEL
  attribute :tel, :string
  # 住所
  attribute :address, :string
  # 無効
  attribute :invalid_flag, :boolean, default: false

  # -------------------------------
  # バリデーション
  # -------------------------------
  # 企業名(必須、MAX50文字)
  validates :name, presence: true, length: { maximum: 50 }, on: [:create, :update]
  # TEL(任意、MAX50文字)
  validates :tel, length: { maximum: 50 }
  # 住所(任意、MAX50文字)
  validates :address, length: { maximum: 50 }

end
