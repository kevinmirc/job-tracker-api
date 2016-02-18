class Api::V1::NotesController < ApplicationController
  def index
    render json: Note.all
  end

  # def show
  #   render json: note
  # end

  def new
    # render json: Note.new
  end

  def create
    render json: Note.create(note_params)
  end

  def destroy
    render json: note.destroy
  end

  def edit
    render json: contact
  end

  def update
    render json: note.update(note_params)
  end

  private

  def note
    Note.find(params[:id])
  end

  def note_params
    params.require(:note).permit(:content, :opportunity_id)
  end
end