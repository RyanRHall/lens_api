# == Schema Information
#
# Table name: articles
#
#  id         :integer          not null, primary key
#  url        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Article < ApplicationRecord
  has_many :annotations

  has_many :lenses,
    through: :annotations,
    source: :lens


  def rating
    article.annotations.reduce(0){ |sum, annotation| sum + annotation.rating }
    sum / article.annotations.length
  end
end
