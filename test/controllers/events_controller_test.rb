require 'test_helper'

class EventsControllerTest < ActionController::TestCase
  setup do
    @event = events(:one)
  end

  test "should create event" do
    assert_difference('Event.count') do
      post :create, params: { event: { key: "new-event", text: @event.text } }
    end

    assert_response 201

    response_json = JSON.parse(response.body)
    assert_equal "new-event", response_json['key']
    assert_equal @event.text, response_json['text']
    assert_not_nil response_json['updated_at']
  end

  test "should show event" do
    get :show, params: { id: @event.key }
    assert_response :success

    response_json = JSON.parse(response.body)
    assert_equal @event.key, response_json['key']
    assert_equal @event.text, response_json['text']
    assert_not_nil response_json['updated_at']
  end

  test "should update event" do
    patch :update, params: { id: @event.key, event: { text: @event.text } }
    assert_response 200

    response_json = JSON.parse(response.body)
    assert_equal @event.key, response_json['key']
    assert_equal @event.text, response_json['text']
    assert_not_nil response_json['updated_at']
  end
end
