class TodoController < ApplicationController
    def index
        @todo_name="Eat food"
        @todo_time="100000 min"
        @todo_days="3"
        @todo_description="eat all the food, leave none"
    end
    def AddTask
    end
    def show
        @todo_name="Eat food"
        @todo_time="100000 min"
        @todo_days="3"
        @todo_description="eat all the food, leave none"
    
    todo_id = params[:id]
    
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
    end
    

end