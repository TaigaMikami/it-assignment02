class Task < ApplicationRecord
  belongs_to :project
  mount_uploader :picture, PictureUploader
  validates :title,
  presence: { message: "入力してください"}
  validate  :picture_size

  scope :unfinished, ->{ where(done: false)}

  private

    # アップロードされた画像のサイズをバリデーションする
    def picture_size
      if picture.size > 5.megabytes
        errors.add(:picture, "should be less than 5MB")
      end
    end
end
