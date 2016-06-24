post '/questions/:id/comments' do
  Comment.create(content: params[:content], user_id: session[:id], commentable_id: params[:id], commentable_type: 'questions')
  redirect "questions/#{params[:id]}"
end

post '/questions/:question_id/answers/:id/comments' do
  Comment.create(content: params[:content], user_id: session[:id], commentable_id: params[:id], commentable_type: 'answers')
  redirect "questions/#{params[:id]}"
end