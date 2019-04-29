class SchoolClassesController < ApplicationController

    def index
        @schoolclasses = SchoolClass.all
    end

    def new
        @school_class = SchoolClass.new
    end

    def create
        @school_class = SchoolClass.new
        @school_class.title = params[:school_class][:title]
        @school_class.room_number = params[:school_class][:room_number]
        @school_class.save
        redirect_to school_class_path(@school_class)
        # @article.title = params[:title]
        # @article.description = params[:description]
        # @article.save
        # redirect_to article_path(@article)
    end

    def show
        @school_class = SchoolClass.find(params[:id])
    end

    def edit
        @school_class = SchoolClass.find(params[:id])
    end

    def update
        #byebug
        @school_class = SchoolClass.find(params[:id])
        @school_class.update(title: params[:school_class][:title], room_number: params[:school_class][:room_number])
        #@school_class.save
        redirect_to school_class_path(@school_class)
    end

end