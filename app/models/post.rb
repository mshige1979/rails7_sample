class Post < ApplicationRecord
  # -------------------------
  # リレーション設定
  # -------------------------
  # タグ
#  has_many :tags, :class_name => "PostTag", :foreign_key => "parent_id", dependent: :destroy
  has_many :tags, :class_name => "PostTag", :foreign_key => "parent_id", dependent: :destroy
  # 
  accepts_nested_attributes_for :tags, allow_destroy: true
end
