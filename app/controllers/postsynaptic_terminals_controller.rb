class PostsynapticTerminalsController < ApplicationController
  # GET /postsynaptic_terminals
  # GET /postsynaptic_terminals.json
  def index
    @postsynaptic_terminals = PostsynapticTerminal.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @postsynaptic_terminals }
    end
  end

  # GET /postsynaptic_terminals/1
  # GET /postsynaptic_terminals/1.json
  def show
    @postsynaptic_terminal = PostsynapticTerminal.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @postsynaptic_terminal }
    end
  end

  # GET /postsynaptic_terminals/new
  # GET /postsynaptic_terminals/new.json
  def new
    @postsynaptic_terminal = PostsynapticTerminal.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @postsynaptic_terminal }
    end
  end

  # GET /postsynaptic_terminals/1/edit
  def edit
    @postsynaptic_terminal = PostsynapticTerminal.find(params[:id])
  end

  # POST /postsynaptic_terminals
  # POST /postsynaptic_terminals.json
  def create
    @postsynaptic_terminal = PostsynapticTerminal.new(params[:postsynaptic_terminal])

    respond_to do |format|
      if @postsynaptic_terminal.save
        format.html { redirect_to @postsynaptic_terminal, notice: 'Postsynaptic terminal was successfully created.' }
        format.json { render json: @postsynaptic_terminal, status: :created, location: @postsynaptic_terminal }
      else
        format.html { render action: "new" }
        format.json { render json: @postsynaptic_terminal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /postsynaptic_terminals/1
  # PUT /postsynaptic_terminals/1.json
  def update
    @postsynaptic_terminal = PostsynapticTerminal.find(params[:id])

    respond_to do |format|
      if @postsynaptic_terminal.update_attributes(params[:postsynaptic_terminal])
        format.html { redirect_to @postsynaptic_terminal, notice: 'Postsynaptic terminal was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @postsynaptic_terminal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /postsynaptic_terminals/1
  # DELETE /postsynaptic_terminals/1.json
  def destroy
    @postsynaptic_terminal = PostsynapticTerminal.find(params[:id])
    @postsynaptic_terminal.destroy

    respond_to do |format|
      format.html { redirect_to postsynaptic_terminals_url }
      format.json { head :ok }
    end
  end
end
