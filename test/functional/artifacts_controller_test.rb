require 'test_helper'

class ArtifactsControllerTest < ActionController::TestCase
  setup do
    @artifact = artifacts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:artifacts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create artifact" do
    assert_difference('Artifact.count') do
      post :create, artifact: { audio: @artifact.audio, contributors: @artifact.contributors, image: @artifact.image, title: @artifact.title, typed_text: @artifact.typed_text, uploaded_text: @artifact.uploaded_text, video: @artifact.video }
    end

    assert_redirected_to artifact_path(assigns(:artifact))
  end

  test "should show artifact" do
    get :show, id: @artifact
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @artifact
    assert_response :success
  end

  test "should update artifact" do
    put :update, id: @artifact, artifact: { audio: @artifact.audio, contributors: @artifact.contributors, image: @artifact.image, title: @artifact.title, typed_text: @artifact.typed_text, uploaded_text: @artifact.uploaded_text, video: @artifact.video }
    assert_redirected_to artifact_path(assigns(:artifact))
  end

  test "should destroy artifact" do
    assert_difference('Artifact.count', -1) do
      delete :destroy, id: @artifact
    end

    assert_redirected_to artifacts_path
  end
end
