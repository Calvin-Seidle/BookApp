class Booklist < ApplicationRecord
	validates :ISBN, presence: true
	validates :genre, presence: true
	validates :title, presence: true
	validates :author, presence: true
	validates :pages, presence: true
	validates :year, presence: true

	has_attached_file :image, styles: { large: "600x600>", medium: "300x300>", thumb: "150x150>" }
  	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
