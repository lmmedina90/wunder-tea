require 'test_helper'
require 'minitest/autorun'

class TeaTest < ActiveSupport::TestCase

  #
  # Validations
  #

  describe "validations" do
    let(:tea) { Fabricate(:tea) }

    it "has a valid fabricator" do
      Fabricate.build(:tea).wont_be_nil
    end
  end
end
