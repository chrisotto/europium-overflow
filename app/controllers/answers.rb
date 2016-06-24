# Show form for creating a new answer
get '/questions/:id/answers/new' do
  @question = Question.find(params[:id])
  if request.xhr?
    erb :'answers/new', layout: false
  else
    erb :'answers/new'
  end
end

# Submit form and create a new answer
post '/questions/:id' do
  @question = Question.find(params[:id])
  @answer = Answer.new(user_id: session[:id], question_id: @question.id, content: params[:content])

  if @answer.save
    redirect "/questions/#{@question.id}"
  else
    @errors = @question.errors.full_messages
    erb :'answers/new'
  end
end

# Show form to edit answer
get '/questions/:id/answers/:answer_id/edit' do

  @question = Question.find(params[:id])

  @answer = @question.answers.find(params[:answer_id])

  erb :'answers/edit'

end

# Submit form to edit answer
put '/questions/:id/answers/:answer_id' do

  @question = Question.find(params[:id])
  @answer = @question.answers.find(params[:answer_id])

  if @answer.update_attributes(content: params[:content])
    redirect "/questions/#{@question.id}"
  else
    @errors = @answer.errors.full_messages
    erb :'answers/edit'
  end
end

# Delete answer
delete '/questions/:id/answers/:answer_id' do

  @question = Question.find(params[:id])
  @answer = @question.answers.find(params[:answer_id])

  @answer.destroy

  redirect "/questions/#{@question.id}"
end