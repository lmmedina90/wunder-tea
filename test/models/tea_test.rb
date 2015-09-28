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

  #
  # Associations
  #

  describe "associations" do
    user = Fabricate(:user)
    tea = Fabricate(:tea, user: user)

    it "belongs to user" do
      assert_equal(tea.user.id, user.id)
    end
  end
end
