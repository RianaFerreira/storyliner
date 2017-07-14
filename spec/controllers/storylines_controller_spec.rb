require "rails_helper"

RSpec.describe StorylinesController, type: :controller do
  # Read more:
  # http://blog.bigbinary.com/2016/04/19/changes-to-test-controllers-in-rails-5.html
  # https://github.com/rails/rails/pull/18323/
  
  # Focus on the result of the controller action
  # * what cookies are set?
  # * what HTTP code is set?
  # * is the request idempotent?
  describe "POST #create" do
    context "with valid attributes" do
      let(:params) do
        {
          title: "Test storyline",
          plot: "Overcoming the Monster",
          hero: "Anakin Skywalker",
          location: "Alderaan"
        }
      end

      it "creates a new storyline" do
        expect do
          post storylines_url, params: { storyline: params }
        end.to change{ Storyline.count }.by(1)
      end
    end

    context "with invalid attributes" do
      it "does not create a new storyline" do
        expect do
          post storylines_url, params: { storyline: {} }
        end.to_not change{ Storyline.count }
      end
    end
  end
end
