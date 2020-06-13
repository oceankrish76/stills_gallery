class PhotoAttachmentsController < ApplicationController
  before_action :set_photo_attachment, only: [:show, :edit, :update, :destroy]

  # GET /photo_attachments
  # GET /photo_attachments.json
  def index
    @photo_attachments = PhotoAttachment.all
  end

  # GET /photo_attachments/1
  # GET /photo_attachments/1.json
  def show
  end

  # GET /photo_attachments/new
  def new
    @photo_attachment = PhotoAttachment.new
  end

  # GET /photo_attachments/1/edit
  def edit
  end

  # POST /photo_attachments
  # POST /photo_attachments.json
  def create
    @photo_attachment = PhotoAttachment.new(photo_attachment_params)

    respond_to do |format|
      if @photo_attachment.save
        format.html { redirect_to @photo_attachment, notice: 'Photo attachment was successfully created.' }
        format.json { render :show, status: :created, location: @photo_attachment }
      else
        format.html { render :new }
        format.json { render json: @photo_attachment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /photo_attachments/1
  # PATCH/PUT /photo_attachments/1.json
  def update
    respond_to do |format|
      if @photo_attachment.update(photo_attachment_params)
        format.html { redirect_to @photo_attachment, notice: 'Photo attachment was successfully updated.' }
        format.json { render :show, status: :ok, location: @photo_attachment }
      else
        format.html { render :edit }
        format.json { render json: @photo_attachment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /photo_attachments/1
  # DELETE /photo_attachments/1.json
  def destroy
    @photo_attachment.destroy
    respond_to do |format|
      format.html { redirect_to photo_attachments_url, notice: 'Photo attachment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_photo_attachment
      @photo_attachment = PhotoAttachment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def photo_attachment_params
      params.require(:photo_attachment).permit(:photo_id, :avatar)
    end
end
