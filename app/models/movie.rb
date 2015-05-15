class Movie < ActiveRecord::Base
  searchkick
  belongs_to :user
  has_many :reviews

  has_attached_file :image, :styles => { :medium => "400x600#" , :large => "500x730#"}
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  def avg_rate
    reviews = Review.where(movie_id: self.id)


    avg = 0
    count = 0

    reviews.each do |review|
      if review.rate.present?
        count += 1
        avg += review.rate
      end
    end

    if count != 0
      avg = avg / count*1.0
    else
      avg = 0.0
    end


  end
end
