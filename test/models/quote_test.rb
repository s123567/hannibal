require 'test_helper'

class QuoteTest < ActiveSupport::TestCase

  def setup
    
    @user = User.new(email:"bob@bob.com", password: 'testtest')
    @quote = Quote.new(content:'',user_id: @user.id )
  end

  test 'a quote without content should NOT be valid' do
    assert_not @quote.valid?
  end

  test 'a quote without USER should NOT be valid' do
    @quote = Quote.new(content: 'ghghghgh')
    assert_not @quote.valid?
  end

  test 'a quote with USER BUT > 140 char should NOT be valid' do
    @quote = Quote.new(content: 'a'*145)
    assert_not @quote.valid?
  end

  test 'a quote with USER and < 140 char should be valid' do
    @quote = Quote.new(content: 'a'*14, user_id: @user.id )
    assert @quote.valid?
  end

end
