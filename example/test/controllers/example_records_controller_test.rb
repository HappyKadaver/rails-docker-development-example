require "test_helper"

class ExampleRecordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @example_record = example_records(:one)
  end

  test "should get index" do
    get example_records_url
    assert_response :success
  end

  test "should get new" do
    get new_example_record_url
    assert_response :success
  end

  test "should create example_record" do
    assert_difference('ExampleRecord.count') do
      post example_records_url, params: { example_record: { foo: @example_record.foo } }
    end

    assert_redirected_to example_record_url(ExampleRecord.last)
  end

  test "should show example_record" do
    get example_record_url(@example_record)
    assert_response :success
  end

  test "should get edit" do
    get edit_example_record_url(@example_record)
    assert_response :success
  end

  test "should update example_record" do
    patch example_record_url(@example_record), params: { example_record: { foo: @example_record.foo } }
    assert_redirected_to example_record_url(@example_record)
  end

  test "should destroy example_record" do
    assert_difference('ExampleRecord.count', -1) do
      delete example_record_url(@example_record)
    end

    assert_redirected_to example_records_url
  end
end
