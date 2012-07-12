class UserstsController < ApplicationController
  # GET /usersts
  # GET /usersts.json
  def index
    @project = Project.all
    @usersts = Userst.all
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @usersts }
    end
  end

  # GET /usersts/1
  # GET /usersts/1.json
  def show
    @userst = Userst.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @userst }
    end
  end

  # GET /usersts/new
  # GET /usersts/new.json
  def new
     @iteration = Iteration.find(params[:id])
     @userst = @iteration.usersts.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @userst }
    end
  end

  # GET /usersts/1/edit
  def edit
    @userst = Userst.find(params[:id])
  end

  # POST /usersts
  # POST /usersts.json
  def create
   @iteration = Iteration.find(params[:id])
     @userst = @iteration.usersts.build(params[:userst])

    respond_to do |format|
      if @userst.save
        format.html { redirect_to new_userst_path( :id => @iteration.id) }
        format.json { render :json => @userst, :status => :created, :location => @userst }
      else
        format.html { render :action => "new" }
        format.json { render :json => @userst.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /usersts/1
  # PUT /usersts/1.json
  def update
    @userst = Userst.find(params[:id])

    respond_to do |format|
      if @userst.update_attributes(params[:userst])
        format.html { redirect_to @userst, :notice => 'Userst was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @userst.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /usersts/1
  # DELETE /usersts/1.json
  def destroy
    @userst = Userst.find(params[:id])
    @userst.destroy

    respond_to do |format|
      format.html { redirect_to usersts_url }
      format.json { head :no_content }
    end
  end
end
