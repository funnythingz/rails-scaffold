require 'test_helper'

class PokemonEntriesControllerTest < ActionController::TestCase
  setup do
    @pokemon_entry = pokemon_entries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pokemon_entries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pokemon_entry" do
    assert_difference('PokemonEntry.count') do
      post :create, pokemon_entry: { name: @pokemon_entry.name, pokedexNumber: @pokemon_entry.pokedexNumber }
    end

    assert_redirected_to pokemon_entry_path(assigns(:pokemon_entry))
  end

  test "should show pokemon_entry" do
    get :show, id: @pokemon_entry
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pokemon_entry
    assert_response :success
  end

  test "should update pokemon_entry" do
    patch :update, id: @pokemon_entry, pokemon_entry: { name: @pokemon_entry.name, pokedexNumber: @pokemon_entry.pokedexNumber }
    assert_redirected_to pokemon_entry_path(assigns(:pokemon_entry))
  end

  test "should destroy pokemon_entry" do
    assert_difference('PokemonEntry.count', -1) do
      delete :destroy, id: @pokemon_entry
    end

    assert_redirected_to pokemon_entries_path
  end
end
