class DataFilesController < ApplicationController
  # GET /data_files
  # GET /data_files.xml
  def index
    @data_files = DataFile.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @data_files }
    end
  end

  # GET /data_files/1
  # GET /data_files/1.xml
  def show
    @data_file = DataFile.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @data_file }
    end
  end

  # GET /data_files/new
  # GET /data_files/new.xml
  def new
    @data_file = DataFile.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @data_file }
    end
  end

  # GET /data_files/1/edit
  def edit
    @data_file = DataFile.find(params[:id])
  end

  # POST /data_files
  # POST /data_files.xml
  def create
    @data_file = DataFile.new(params[:data_file])

    respond_to do |format|
      if @data_file.save
        format.html { redirect_to(@data_file, :notice => 'Banner uploaded successfully.') }
        format.xml  { render :xml => @data_file, :status => :created, :location => @data_file }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @data_file.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /data_files/1
  # PUT /data_files/1.xml
  def update
    @data_file = DataFile.find(params[:id])

    respond_to do |format|
      if @data_file.update_attributes(params[:data_file])
        format.html { redirect_to(@data_file, :notice => 'DataFile was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @data_file.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /data_files/1
  # DELETE /data_files/1.xml
  def destroy
    @data_file = DataFile.find(params[:id])
    @data_file.destroy

    respond_to do |format|
      format.html { redirect_to(data_files_url) }
      format.xml  { head :ok }
    end
  end
  def uploadFile
    @name = params[:data_file][:title]
    if(@name.empty?)
    else
      unless(params[:small_banner].nil? && params[:large_banner].nil?)
        post = DataFile.save( params[:small_banner],params[:large_banner],@name)
        create
      end
    end
  end
end
