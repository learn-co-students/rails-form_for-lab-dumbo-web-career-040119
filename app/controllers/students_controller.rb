class StudentsController < ApplicationController



        def index
            @students = Student.all
          end

          def show
            @student = Student.find(params[:id])
            # @students = @student.students
          end

          def new
            @student = Student.new()
          end


          def create
            @student = Student.new(student_params)
              if @student.save
                redirect_to students_path
              else
                render "new"
              end
          end


          def edit
            @student = Student.find(params[:id])
          end

          def update
            @student = Student.find(params[:id])
            @student.update(student_params)
            @student.save
            redirect_to @student
          end


          def destroy
            Student.find(params[:id]).destroy
            redirect_to students_path
          end


          private

          def student_params
            params.require(:student).permit()
          end



end
