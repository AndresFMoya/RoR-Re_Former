# frozen_string_literal: true

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(username: 'Example User', email: 'user@example.com', password: 'foobar')
  end

  test 'should be valid' do
    assert @user.valid?
  end

  test 'should not be valid' do
    @user = User.new(username: '   ', email: '  ', password: '   ')
    assert_not @user.valid?
  end
end
