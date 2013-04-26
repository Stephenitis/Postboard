class Post < ActiveRecord::Base
  has_and_belongs_to_many :tags
  validates :title, :presence => true
  validates :body, :presence => true

  before_save :process_tags
  attr_reader :tag_names

  def tag_names=(string_of_tags)
    @tag_names = string_of_tags
  end

  private

  def process_tags
    self.tags.clear
    return self if tag_names.nil?
    @tag_names = tag_names.split(',')
    tag_names.each do |tag|
      tags << Tag.where(tag_name: tag.downcase).first_or_create
    end
  end
  
end
