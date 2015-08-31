require 'test_helper'

class EventTest < ActiveSupport::TestCase
  should validate_presence_of(:key)
  should validate_uniqueness_of(:key)

  should validate_presence_of(:text)
end