require 'rails_helper'

RSpec.describe CommentsController, type: :controller do

  describe "#create" do

    # let(:idea) {create(:idea)}
    # let(:user) {create(:user)}
    # let(:comment) {create(:comment)}
    #
    context "with user logged in" do
      def user_login
        post :create, params: { user: { first_name: "Archie",
                                       last_name: "Dog",
                                       email: "archie@dog.com",
                                       password: "123",
                                       password_confirmation: "123"} }
      end

      it "redirects to the idea show page" do
        user_login
        expect(response).to redirect_to(idea_path(idea))
      end
      # rspec spec/controllers/comments_controller_spec.rb:15

      it "associates the comment with the logged in user"
    end

    context "with valid params"

  end

  describe "#destroy" do

    it "requires user to be logged in to delete comments"
    it "redirects to the idea show page"
    it "requires the user logged in is the owner of the comment"
    it "requires idea owners can delete any comments on their idea"

  end



end
