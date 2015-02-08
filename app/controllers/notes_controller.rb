class NotesController < ApplicationController
  def index
    render json: Note.all    
  end

  def create
    @note = Note.create(note_params)
    render json: @note
  end

  def update
    @note = Note.find(params[:id])
    @note.udpate(note_params)
  end

  def destroy
    @note = Note.find(params[:id])
    @note.destroy
    render json: { status: "OK" }
  end

  private

  def note_params
    params.require(:note).permit(:description, :lead_id)
  end
end

