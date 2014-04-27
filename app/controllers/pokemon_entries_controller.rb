class PokemonEntriesController < ApplicationController
  before_action :set_pokemon_entry, only: [:show, :edit, :update, :destroy]

  # GET /pokemon_entries
  # GET /pokemon_entries.json
  def index
    @pokemon_entries = PokemonEntry.all
  end

  # GET /pokemon_entries/1
  # GET /pokemon_entries/1.json
  def show
  end

  # GET /pokemon_entries/new
  def new
    @pokemon_entry = PokemonEntry.new
  end

  # GET /pokemon_entries/1/edit
  def edit
  end

  # POST /pokemon_entries
  # POST /pokemon_entries.json
  def create
    @pokemon_entry = PokemonEntry.new(pokemon_entry_params)

    respond_to do |format|
      if @pokemon_entry.save
        format.html { redirect_to @pokemon_entry, notice: 'Pokemon entry was successfully created.' }
        format.json { render action: 'show', status: :created, location: @pokemon_entry }
      else
        format.html { render action: 'new' }
        format.json { render json: @pokemon_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pokemon_entries/1
  # PATCH/PUT /pokemon_entries/1.json
  def update
    respond_to do |format|
      if @pokemon_entry.update(pokemon_entry_params)
        format.html { redirect_to @pokemon_entry, notice: 'Pokemon entry was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @pokemon_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pokemon_entries/1
  # DELETE /pokemon_entries/1.json
  def destroy
    @pokemon_entry.destroy
    respond_to do |format|
      format.html { redirect_to pokemon_entries_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pokemon_entry
      @pokemon_entry = PokemonEntry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pokemon_entry_params
      params.require(:pokemon_entry).permit(:name, :pokedexNumber)
    end
end
