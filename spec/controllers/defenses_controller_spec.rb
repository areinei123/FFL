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

RSpec.describe DefensesController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # Defense. As you add validations to Defense, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # DefensesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all defenses as @defenses" do
      defense = Defense.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:defenses)).to eq([defense])
    end
  end

  describe "GET #show" do
    it "assigns the requested defense as @defense" do
      defense = Defense.create! valid_attributes
      get :show, {:id => defense.to_param}, valid_session
      expect(assigns(:defense)).to eq(defense)
    end
  end

  describe "GET #new" do
    it "assigns a new defense as @defense" do
      get :new, {}, valid_session
      expect(assigns(:defense)).to be_a_new(Defense)
    end
  end

  describe "GET #edit" do
    it "assigns the requested defense as @defense" do
      defense = Defense.create! valid_attributes
      get :edit, {:id => defense.to_param}, valid_session
      expect(assigns(:defense)).to eq(defense)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Defense" do
        expect {
          post :create, {:defense => valid_attributes}, valid_session
        }.to change(Defense, :count).by(1)
      end

      it "assigns a newly created defense as @defense" do
        post :create, {:defense => valid_attributes}, valid_session
        expect(assigns(:defense)).to be_a(Defense)
        expect(assigns(:defense)).to be_persisted
      end

      it "redirects to the created defense" do
        post :create, {:defense => valid_attributes}, valid_session
        expect(response).to redirect_to(Defense.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved defense as @defense" do
        post :create, {:defense => invalid_attributes}, valid_session
        expect(assigns(:defense)).to be_a_new(Defense)
      end

      it "re-renders the 'new' template" do
        post :create, {:defense => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested defense" do
        defense = Defense.create! valid_attributes
        put :update, {:id => defense.to_param, :defense => new_attributes}, valid_session
        defense.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested defense as @defense" do
        defense = Defense.create! valid_attributes
        put :update, {:id => defense.to_param, :defense => valid_attributes}, valid_session
        expect(assigns(:defense)).to eq(defense)
      end

      it "redirects to the defense" do
        defense = Defense.create! valid_attributes
        put :update, {:id => defense.to_param, :defense => valid_attributes}, valid_session
        expect(response).to redirect_to(defense)
      end
    end

    context "with invalid params" do
      it "assigns the defense as @defense" do
        defense = Defense.create! valid_attributes
        put :update, {:id => defense.to_param, :defense => invalid_attributes}, valid_session
        expect(assigns(:defense)).to eq(defense)
      end

      it "re-renders the 'edit' template" do
        defense = Defense.create! valid_attributes
        put :update, {:id => defense.to_param, :defense => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested defense" do
      defense = Defense.create! valid_attributes
      expect {
        delete :destroy, {:id => defense.to_param}, valid_session
      }.to change(Defense, :count).by(-1)
    end

    it "redirects to the defenses list" do
      defense = Defense.create! valid_attributes
      delete :destroy, {:id => defense.to_param}, valid_session
      expect(response).to redirect_to(defenses_url)
    end
  end

end
