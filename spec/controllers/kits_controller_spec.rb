require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe KitsController, :type => :controller do

  # This should return the minimal set of attributes required to create a valid
  # Kit. As you add validations to Kit, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    {title: Faker::Commerce.product_name,
     number_elements:Faker::Number.between(1,100).to_i,
     code:Faker::Lorem.characters(6),
     kit_type: ["desarrollo","prueba"].sample(),
     state: ["nuevo","usado"].sample(),
     reference: Faker::Lorem.sentence,
     domain: Faker::Educator.university,
     purpose: Faker::Lorem.paragraph,
     serie: Faker::Lorem.characters(7)}
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # KitsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all kits as @kits" do
      kit = Kit.create! valid_attributes
      get :index, {:format => :json}
      expect(assigns(:kits)).to eq([kit])
    end
  end

  describe "GET show" do
    it "assigns the requested kit as @kit" do
      kit = Kit.create! valid_attributes
      get :show,{:format => :json}, {:id => kit.to_param}, valid_session
      expect(assigns(:kit)).to eq(kit)
    end
  end

  describe "GET new" do
    it "assigns a new kit as @kit" do
      get :new, valid_session, {:format => :json}
      expect(assigns(:kit)).to be_a_new(Kit)
    end
  end

  describe "GET edit" do
    it "assigns the requested kit as @kit" do
      kit = Kit.create! valid_attributes
      get :edit, {:id => kit.to_param}, valid_session, {:format => :json}
      expect(assigns(:kit)).to eq(kit)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Kit" do
        expect {
          post :create, {:kit => valid_attributes}, valid_session, {:format => :json}
        }.to change(Kit, :count).by(1)
      end

      it "assigns a newly created kit as @kit" do
        post :create, {:kit => valid_attributes}, valid_session, {:format => :json}
        expect(assigns(:kit)).to be_a(Kit)
        expect(assigns(:kit)).to be_persisted
      end

      it "redirects to the created kit" do
        post :create, {:kit => valid_attributes}, valid_session, {:format => :json}
        expect(response).to redirect_to(Kit.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved kit as @kit" do
        post :create, {:kit => invalid_attributes}, valid_session, {:format => :json}
        expect(assigns(:kit)).to be_a_new(Kit)
      end

      it "re-renders the 'new' template" do
        post :create, {:kit => invalid_attributes}, valid_session, {:format => :json}
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        {title: Faker::Commerce.product_name,
         number_elements:Faker::Number.between(1,100).to_i,
         code:Faker::Lorem.characters(6),
         kit_type: ["desarrollo","prueba"].sample(),
         state: ["nuevo","usado"].sample(),
         reference: Faker::Lorem.sentence,
         domain: Faker::Educator.university,
         purpose: Faker::Lorem.paragraph,
         serie: Faker::Lorem.characters(7)}
      }

      it "updates the requested kit" do
        kit = Kit.create! valid_attributes
        put :update, {:id => kit.to_param, :kit => new_attributes}, valid_session, {:format => :json}
        kit.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested kit as @kit" do
        kit = Kit.create! valid_attributes
        put :update, {:id => kit.to_param, :kit => valid_attributes}, valid_session, {:format => :json}
        expect(assigns(:kit)).to eq(kit)
      end

      it "redirects to the kit" do
        kit = Kit.create! valid_attributes
        put :update, {:id => kit.to_param, :kit => valid_attributes}, valid_session, {:format => :json}
        expect(response).to redirect_to(kit)
      end
    end

    describe "with invalid params" do
      it "assigns the kit as @kit" do
        kit = Kit.create! valid_attributes
        put :update, {:id => kit.to_param, :kit => invalid_attributes}, valid_session, {:format => :json}
        expect(assigns(:kit)).to eq(kit)
      end

      it "re-renders the 'edit' template" do
        kit = Kit.create! valid_attributes
        put :update, {:id => kit.to_param, :kit => invalid_attributes}, valid_session, {:format => :json}
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested kit" do
      kit = Kit.create! valid_attributes
      expect {
        delete :destroy, {:id => kit.to_param}, valid_session, {:format => :json}
      }.to change(Kit, :count).by(-1)
    end

    it "redirects to the kits list" do
      kit = Kit.create! valid_attributes
      delete :destroy, {:id => kit.to_param}, valid_session, {:format => :json}
      expect(response).to redirect_to(kits_url)
    end
  end

end
