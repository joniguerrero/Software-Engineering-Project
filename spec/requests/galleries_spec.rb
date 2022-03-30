require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/galleries", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # Gallery. As you add validations to Gallery, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Gallery.create! valid_attributes
      get galleries_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      gallery = Gallery.create! valid_attributes
      get gallery_url(gallery)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_gallery_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      gallery = Gallery.create! valid_attributes
      get edit_gallery_url(gallery)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Gallery" do
        expect {
          post galleries_url, params: { gallery: valid_attributes }
        }.to change(Gallery, :count).by(1)
      end

      it "redirects to the created gallery" do
        post galleries_url, params: { gallery: valid_attributes }
        expect(response).to redirect_to(gallery_url(Gallery.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Gallery" do
        expect {
          post galleries_url, params: { gallery: invalid_attributes }
        }.to change(Gallery, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post galleries_url, params: { gallery: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested gallery" do
        gallery = Gallery.create! valid_attributes
        patch gallery_url(gallery), params: { gallery: new_attributes }
        gallery.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the gallery" do
        gallery = Gallery.create! valid_attributes
        patch gallery_url(gallery), params: { gallery: new_attributes }
        gallery.reload
        expect(response).to redirect_to(gallery_url(gallery))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        gallery = Gallery.create! valid_attributes
        patch gallery_url(gallery), params: { gallery: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested gallery" do
      gallery = Gallery.create! valid_attributes
      expect {
        delete gallery_url(gallery)
      }.to change(Gallery, :count).by(-1)
    end

    it "redirects to the galleries list" do
      gallery = Gallery.create! valid_attributes
      delete gallery_url(gallery)
      expect(response).to redirect_to(galleries_url)
    end
  end
end
