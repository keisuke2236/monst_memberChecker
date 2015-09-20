class MembersController < ApplicationController
  before_action :set_member, only: [:show, :edit, :update]

  # GET /members
  # GET /members.json
  def index
    @members = Member.all.order("good DESC")
  end

  def admin
    @members = Member.all.order("good DESC")
  end
  

  # GET /members/1
  # GET /members/1.json
  def show
    @mem = Member.find(params[:id])
  end

  # GET /members/new
  def new
    @member = Member.new
  end



  # GET /members/1/edit
  def edit
    @aid = Member.find(params[:id])

  end

  def hello
    render :text => 'Hello!'

  end

  def addGood
    @member = Member.find_by(params[:id])
    @member.update_attribute :good, @member.good+1
    redirect_to members_path
  end

  def addNomal
    @member = Member.find_by(params[:id])
    @member.update_attribute :nomal, @member.nomal+1
    redirect_to members_path
  end

  def addBad
    @member = Member.find_by(params[:id])
    @member.update_attribute :bad, @member.bad+1
    redirect_to members_path
  end

  def delGood
    @member = Member.find_by(params[:id])
    @member.update_attribute :good, @member.good-1
    redirect_to members_path
  end

  def delNomal
    @member = Member.find_by(params[:id])
    @member.update_attribute :nomal, @member.nomal-1
    redirect_to members_path
  end

  def delBad
    @member = Member.find_by(params[:id])
    @member.update_attribute :bad, @member.bad-1
    redirect_to members_path
  end


  # POST /members
  # POST /members.json
  def create
    @member = Member.new(member_params)
    @member.good = 0
    @member.nomal = 0
    @member.bad = 0
    if @member.save
      redirect_to members_path
    else
      render 'new'
    end
    #出力したい形式を指定することができるrespond to do |format|
  end

  def update
    Member.find_by(id: params[:id]).update_attribute :good ,params[:member][:good]
    Member.find_by(id: params[:id]).update_attribute :nomal ,params[:member][:nomal]
    Member.find_by(id: params[:id]).update_attribute :bad ,params[:member][:bad]
    redirect_to members_path
  end


  
  def destroy
    Member.find(params[:id]).destroy
    redirect_to members_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_member
      @member = Member.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def member_params
      params.require(:member).permit(:name, :good, :nomal, :bad)
    end
  end
