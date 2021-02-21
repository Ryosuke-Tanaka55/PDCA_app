class Post < ApplicationRecord
  include CommonModule
  belongs_to :user
  accepts_nested_attributes_for :images

  # いいね、コメント、画像
  has_many :likes, dependent: :destroy
  has_many_attached :images
  has_many :comments, dependent: :destroy

  # バリデーション
  default_scope -> { order(created_at: :desc) }
  validates :user_id, presence: true
  validates :title, presence: true
  validates :images, content_type: { in: %w[image/jpeg image/gif image/png],
                                      message: "有効な画像形式である必要があります。" },
                    size:         { less_than: 5.megabytes,
                                    message: "5MB以下を選択してください。" }
                                    
end
