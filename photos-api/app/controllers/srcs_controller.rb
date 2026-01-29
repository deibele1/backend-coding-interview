class SrcsController < ApplicationController
  before_action :set_src, only: %i[ show update destroy ]

  # GET /srcs
  def index
    @srcs = Src.all

    render json: @srcs
  end

  # GET /srcs/1
  def show
    render json: @src
  end

  # POST /srcs
  def create
    @src = Src.new(src_params)

    if @src.save
      render json: @src, status: :created, location: @src
    else
      render json: @src.errors, status: :unprocessable_content
    end
  end

  # PATCH/PUT /srcs/1
  def update
    if @src.update(src_params)
      render json: @src
    else
      render json: @src.errors, status: :unprocessable_content
    end
  end

  # DELETE /srcs/1
  def destroy
    @src.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_src
      @src = Src.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def src_params
      params.expect(src: [ :original, :large2x, :large, :medium, :small, :portrait, :landscape, :tiny, :image_id ])
    end
end
