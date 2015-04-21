require 'rails_helper'

before :each do
  @article = create(:article)
end

describe ArticlesController do
   describe 'index' do
     it 'return articles' do
         get :index
      
      expect(response).to have_http_status(:success)
      expect(assigns(:articles).length).to eq 1
    end
  end
  
  describe 'show' do
     it 'show articles' do
       get :show, id: article.id
      
      expect(response).to have_http_status(:success)
      expect(assigns(:articles)).not_to eq nil
      expect(assigns(:articles).title).to eq @article.title
    end
  end
end