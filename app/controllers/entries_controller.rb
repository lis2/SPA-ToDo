class EntriesController < ApplicationController
  before_filter :load_entry, only: %w(show update destroy)
  respond_to :json

  def index
    @entries = Entry.all

    respond_with @entries
  end

  def show
    respond_with @entry
  end

  def update
    @entry.status = params[:status]
    @entry.save
    respond_with @entry
  end

  def create
    @entry = Entry.create(params[:entry])
    @entry.save

    respond_with @entry
  end

  def destroy
    @entry.destroy

    respond_with @entry
  end

  private

  def load_entry
    @entry = Entry.find params[:id]
  end
end
