class Booklist < ApplicationRecord
	belongs_to :user, dependent: :destroy
	has_many :comments, dependent: :destroy
	acts_as_bookable

	validates :ISBN, presence: true
	validates :genre, presence: true
	validates :title, presence: true, length: {minimum: 5}
	validates :author, presence: true
	validates :pages, presence: true
	validates :year, presence: true

	has_attached_file :image, styles: { large: "600x600>", medium: "300x300>", thumb: "200x200>" }
  	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  	ratyrate_rateable "rating"

 #  	def self.search(search)
	#   if search
	#     where(["title LIKE?","%#{params[:search]}%"])
	#   else
	#     all
	#   end
	# end


end
