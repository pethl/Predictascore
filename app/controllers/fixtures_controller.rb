class FixturesController < ApplicationController
  # GET /fixtures
  # GET /fixtures.json
  def index
    @current_game = Game.where(:current => true)
    @fixtures = Fixture.where(:game_id => @current_game[0].id)
    @fixtures_by_week = @fixtures.group_by { |t| t.week }
    @allfixtures = Fixture.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @fixtures }
    end
  end

  # GET /fixtures/1
  # GET /fixtures/1.json
  def show
    @fixture = Fixture.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @fixture }
    end
  end

  # GET /fixtures/new
  # GET /fixtures/new.json
  def new
    @fixture = Fixture.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @fixture }
    end
  end

  # GET /fixtures/1/edit
  def edit
    @fixture = Fixture.find(params[:id])
  end

  # POST /fixtures
  # POST /fixtures.json
  def create
    @fixture = Fixture.new(params[:fixture])

    respond_to do |format|
      if @fixture.save
        format.html { redirect_to @fixture, notice: 'Fixture was successfully created.' }
        format.json { render json: @fixture, status: :created, location: @fixture }
      else
        format.html { render action: "new" }
        format.json { render json: @fixture.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /fixtures/1
  # PUT /fixtures/1.json
  def update
    @fixture = Fixture.find(params[:id])

    respond_to do |format|
      if @fixture.update_attributes(params[:fixture])
        format.html { redirect_to @fixture, notice: 'Fixture was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @fixture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fixtures/1
  # DELETE /fixtures/1.json
  def destroy
    @fixture = Fixture.find(params[:id])
    @fixture.destroy

    respond_to do |format|
      format.html { redirect_to fixtures_url }
      format.json { head :no_content }
    end
  end
  
      # This function imports matches from CSV file and also updates the match id based on what was selected in the view
  def import   
      row_id = Fixture.import(params[:file])
      @g = (params[:game])
      game = @g["game_id"]
      Fixture.updaterow(row_id, game)
    redirect_to fixtures_path, notice: "Fixtures imported."
  end
  
  
end
