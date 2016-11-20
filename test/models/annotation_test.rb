# == Schema Information
#
# Table name: annotations
#
#  id         :integer          not null, primary key
#  article_id :integer
#  lens_id    :integer
#  ref_text   :string
#  comment    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class AnnotationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
