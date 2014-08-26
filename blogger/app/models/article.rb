class Article < ActiveRecord::Base
  has_many :comments
  has_many :taggings
  has_many :tags, through: :taggings
  belongs_to :author
  has_attached_file :image
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]
  after_initialize :init

  def init
    self.view_count ||= 0
  end
  
  def tag_list
    tags * ", "
  end
  
  def tag_list=(tags_string)
    tag_names = tags_string.split(",").map{|s| s.strip.downcase}.uniq
    new_tags = tag_names.map { |name| Tag.find_or_create_by(name: name) }
    self.tags = new_tags
  end
  
  def increment_counter
    self.view_count += 1
    self.save
  end

end
