# == Schema Information
#
# Table name: lenses
#
#  id         :integer          not null, primary key
#  name       :string
#  image_url  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Lens < ApplicationRecord
  has_many :annotations
end
