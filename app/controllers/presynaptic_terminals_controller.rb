class PresynapticTerminalsController < ApplicationController
  # GET /presynaptic_terminals
  # GET /presynaptic_terminals.json
  def index
    @presynaptic_terminals = PresynapticTerminal.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @presynaptic_terminals }
    end
  end

  # GET /presynaptic_terminals/1
  # GET /presynaptic_terminals/1.json
  def show
    @presynaptic_terminal = PresynapticTerminal.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @presynaptic_terminal }
    end
  end

  # GET /presynaptic_terminals/new
  # GET /presynaptic_terminals/new.json
  def new
    @presynaptic_terminal = PresynapticTerminal.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @presynaptic_terminal }
    end
  end

  # GET /presynaptic_terminals/1/edit
  def edit
    @presynaptic_terminal = PresynapticTerminal.find(params[:id])
  end

  # POST /presynaptic_terminals
  # POST /presynaptic_terminals.json
  def create
    @presynaptic_terminal = PresynapticTerminal.new(params[:presynaptic_terminal])

    respond_to do |format|
      if @presynaptic_terminal.save
        format.html { redirect_to @presynaptic_terminal, notice: 'Presynaptic terminal was successfully created.' }
        format.json { render json: @presynaptic_terminal, status: :created, location: @presynaptic_terminal }
      else
        format.html { render action: "new" }
        format.json { render json: @presynaptic_terminal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /presynaptic_terminals/1
  # PUT /presynaptic_terminals/1.json
  def update
    @presynaptic_terminal = PresynapticTerminal.find(params[:id])

    respond_to do |format|
      if @presynaptic_terminal.update_attributes(params[:presynaptic_terminal])
        format.html { redirect_to @presynaptic_terminal, notice: 'Presynaptic terminal was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @presynaptic_terminal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /presynaptic_terminals/1
  # DELETE /presynaptic_terminals/1.json
  def destroy
    @presynaptic_terminal = PresynapticTerminal.find(params[:id])
    @presynaptic_terminal.destroy

    respond_to do |format|
      format.html { redirect_to presynaptic_terminals_url }
      format.json { head :ok }
    end
  end
end
