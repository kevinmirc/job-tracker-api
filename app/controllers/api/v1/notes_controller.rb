class Api::V1::NotesController < ApplicationController
  def index
    render json: Note.all
  end

  def show
    render json: note
  end

  def create
    @note = Note.create(note_params)
    uploader = AttachmentUploader.new(@note, :note)
    uploader.store!(params[:note][:attachment])
    @note.attachment = uploader.file
    @note.save!
    render json: @note
  end

  def destroy
    render json: note.destroy
  end

  def edit
    render json: note
  end

  def update
    render json: note.update(note_params)
  end

  private

  def note
    Note.find(params[:id])
  end

  def note_params
    params.require(:note).permit(:content, :opportunity_id, :attachment)
  end
end
