require 'test_helper'

class EventsControllerTest < ActionController::TestCase
  setup do
    @event = events(:one)
  end

  test "should create event" do
    assert_difference('Event.count') do
      post :create, params: { event: { key: @event.key, text: @event.text } }
    end

    assert_response 201
  end

  test "should show event" do
    get :show, params: { id: @event }
    assert_response :success
  end

  test "should update event" do
    patch :update, params: { id: @event, event: { key: @event.key, text: @event.text } }
    assert_response 200
  end
end
