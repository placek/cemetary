class Photo < ActiveRecord::Base
  attr_accessible :photo, :sepulchre_id

  belongs_to :sepulchre, inverse_of: :photos
  has_attached_file :photo, styles: {
    big: "600x600>",
    thumb: "100x100!" },
    path: ":rails_root/public/system/photos/:id_partition/:style.png",
    url: "/system/photos/:id_partition/:style.png"

  validates_attachment :photo, presence: true, content_type: { content_type: /image/ }
  validate :sepulchre, presence: true
end
