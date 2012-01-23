class MicroostsController < ApplicationController
  # GET /microosts
  # GET /microosts.xml
  def index
    @microosts = Microost.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @microosts }
    end
  end

  # GET /microosts/1
  # GET /microosts/1.xml
  def show
    @microost = Microost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @microost }
    end
  end

  # GET /microosts/new
  # GET /microosts/new.xml
  def new
    @microost = Microost.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @microost }
    end
  end

  # GET /microosts/1/edit
  def edit
    @microost = Microost.find(params[:id])
  end

  # POST /microosts
  # POST /microosts.xml
  def create
    @microost = Microost.new(params[:microost])

    respond_to do |format|
      if @microost.save
        format.html { redirect_to(@microost, :notice => 'Microost was successfully created.') }
        format.xml  { render :xml => @microost, :status => :created, :location => @microost }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @microost.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /microosts/1
  # PUT /microosts/1.xml
  def update
    @microost = Microost.find(params[:id])

    respond_to do |format|
      if @microost.update_attributes(params[:microost])
        format.html { redirect_to(@microost, :notice => 'Microost was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @microost.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /microosts/1
  # DELETE /microosts/1.xml
  def destroy
    @microost = Microost.find(params[:id])
    @microost.destroy

    respond_to do |format|
      format.html { redirect_to(microosts_url) }
      format.xml  { head :ok }
    end
  end
end
