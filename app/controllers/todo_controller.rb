class TodoController < ApplicationController
    def index
    end
    def AddTask
    
    end
    def index
    @todos = Todo.all
    end
    def create
         t = Todo.new
         t.task = params['task']
         t.time = params['time']
         t.days = params['days']
         t.description = params['description']
         t.save
         redirect_to "/todo/show/#{t.id}"
    
    end
    def destroy
        t = Todo.find_by_id(params[:id])
        t.destroy
        redirect_to "/todo/index"
    end
    def show
        @todo= Todo.find_by_id(params[:id])
        todo_id = params[:id]
        
=begin
    if todo_id == '1'
        @todo_name = 'walk the dog'
        @todo_time = '30 min'
        @todo_days = '3'
        @todo_description = 'walk to the stop sign'
    elsif todo_id == '2'
        @todo_name = 'read'
        @todo_time = '50 min'
        @todo_days = '2'
        @todo_description = 'read Les Mis'
    elsif todo_id == '3'
        @todo_name = 'stop'
        @todo_time = '0 min'
        @todo_days = '0'
        @todo_description = 'no'
    else
        @todo_name = ''
        @todo_time = ''
        @todo_days = ''
        @todo_description = ''
    
    end
=end    
    def edit
        @todo = Todo.find_by_id(params[:id])
    end
    end
    

end