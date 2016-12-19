require 'test_helper'

class QuoteTest < ActiveSupport::TestCase

  def setup
    
    @user_example = User.new(email:"bob@bob.com", password: 'testtest')
    @valid_quote = Quote.new(content:'bla bla', user_id: @user.id )
    @invalid_quote = Quote.new(content:'', user_id: @user.id )
  end

  test 'user with email and apsseword should be valid' do
    assert @user_example.valid?
  end

  test 'user with only one attribute should not be valid' do
    @user_example = User.new(email:"bob@bob.com")
    assert_not @user_example.valid?
  end

  test 'a quote without content should NOT be valid' do
    assert_not @invalid_quote.valid?
  end

  test 'a quote without USER should NOT be valid' do
    @quote = Quote.new(content: 'ghghghgh')
    assert_not @quote.valid?
  end

  # test 'a quote with USER BUT > 140 char should NOT be valid' do
  #   @long_quote = @valid_quote.update!(content: 'a'*14, user_id: @user.id)
  #   assert_not @long_quote.valid?
  # end

  # test 'a quote with USER and < 140 char should be valid' do
  #   @quote = Quote.new(content: 'afgfgdfg', user:@user)
  #   assert @quote.valid?
  # end

end
