require 'test_helper'

class TransactionRecordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @transaction_record = transaction_records(:one)
  end

  test "should get index" do
    get transaction_records_url
    assert_response :success
  end

  test "should get new" do
    get new_transaction_record_url
    assert_response :success
  end

  test "should create transaction_record" do
    assert_difference('TransactionRecord.count') do
      post transaction_records_url, params: { transaction_record: { comments: @transaction_record.comments, credit: @transaction_record.credit, review: @transaction_record.review, user_id: @transaction_record.user_id, user_id: @transaction_record.user_id } }
    end

    assert_redirected_to transaction_record_url(TransactionRecord.last)
  end

  test "should show transaction_record" do
    get transaction_record_url(@transaction_record)
    assert_response :success
  end

  test "should get edit" do
    get edit_transaction_record_url(@transaction_record)
    assert_response :success
  end

  test "should update transaction_record" do
    patch transaction_record_url(@transaction_record), params: { transaction_record: { comments: @transaction_record.comments, credit: @transaction_record.credit, review: @transaction_record.review, user_id: @transaction_record.user_id, user_id: @transaction_record.user_id } }
    assert_redirected_to transaction_record_url(@transaction_record)
  end

  test "should destroy transaction_record" do
    assert_difference('TransactionRecord.count', -1) do
      delete transaction_record_url(@transaction_record)
    end

    assert_redirected_to transaction_records_url
  end
end
