require 'test_helper'
require 'minitest/autorun'

class UserTest < ActiveSupport::TestCase

  #
  # Validations
  #

  describe "validations" do
    let(:user) { Fabricate(:user) }

    it "has a valid fabricator" do
      Fabricate.build(:user).wont_be_nil
    end
  end

  #
  # Associations
  #

  describe "associations" do
    user = Fabricate(:user)
    tea = Fabricate(:tea, user: user)

    it "has many teas" do
      assert_equal(tea.user.id, user.id)
    end
  end
end
