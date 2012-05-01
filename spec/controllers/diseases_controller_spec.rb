require 'spec_helper'

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

describe DiseasesController do

  # This should return the minimal set of attributes required to create a valid
  # Disease. As you add validations to Disease, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end
  
  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # DiseasesController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all diseases as @diseases" do
      disease = Disease.create! valid_attributes
      get :index, {}, valid_session
      assigns(:diseases).should eq([disease])
    end
  end

  describe "GET show" do
    it "assigns the requested disease as @disease" do
      disease = Disease.create! valid_attributes
      get :show, {:id => disease.to_param}, valid_session
      assigns(:disease).should eq(disease)
    end
  end

  describe "GET new" do
    it "assigns a new disease as @disease" do
      get :new, {}, valid_session
      assigns(:disease).should be_a_new(Disease)
    end
  end

  describe "GET edit" do
    it "assigns the requested disease as @disease" do
      disease = Disease.create! valid_attributes
      get :edit, {:id => disease.to_param}, valid_session
      assigns(:disease).should eq(disease)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Disease" do
        expect {
          post :create, {:disease => valid_attributes}, valid_session
        }.to change(Disease, :count).by(1)
      end

      it "assigns a newly created disease as @disease" do
        post :create, {:disease => valid_attributes}, valid_session
        assigns(:disease).should be_a(Disease)
        assigns(:disease).should be_persisted
      end

      it "redirects to the created disease" do
        post :create, {:disease => valid_attributes}, valid_session
        response.should redirect_to(Disease.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved disease as @disease" do
        # Trigger the behavior that occurs when invalid params are submitted
        Disease.any_instance.stub(:save).and_return(false)
        post :create, {:disease => {}}, valid_session
        assigns(:disease).should be_a_new(Disease)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Disease.any_instance.stub(:save).and_return(false)
        post :create, {:disease => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested disease" do
        disease = Disease.create! valid_attributes
        # Assuming there are no other diseases in the database, this
        # specifies that the Disease created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Disease.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => disease.to_param, :disease => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested disease as @disease" do
        disease = Disease.create! valid_attributes
        put :update, {:id => disease.to_param, :disease => valid_attributes}, valid_session
        assigns(:disease).should eq(disease)
      end

      it "redirects to the disease" do
        disease = Disease.create! valid_attributes
        put :update, {:id => disease.to_param, :disease => valid_attributes}, valid_session
        response.should redirect_to(disease)
      end
    end

    describe "with invalid params" do
      it "assigns the disease as @disease" do
        disease = Disease.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Disease.any_instance.stub(:save).and_return(false)
        put :update, {:id => disease.to_param, :disease => {}}, valid_session
        assigns(:disease).should eq(disease)
      end

      it "re-renders the 'edit' template" do
        disease = Disease.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Disease.any_instance.stub(:save).and_return(false)
        put :update, {:id => disease.to_param, :disease => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested disease" do
      disease = Disease.create! valid_attributes
      expect {
        delete :destroy, {:id => disease.to_param}, valid_session
      }.to change(Disease, :count).by(-1)
    end

    it "redirects to the diseases list" do
      disease = Disease.create! valid_attributes
      delete :destroy, {:id => disease.to_param}, valid_session
      response.should redirect_to(diseases_url)
    end
  end

end
