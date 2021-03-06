require 'rails_helper'

describe 'navigate' do
  before do
    @post = Post.create(title: "My Post", description: "My post desc")
  end


  it 'to post pages' do
    visit post_path(@post)
    expect(page.status_code).to eq(200)
  end

  it 'shows the description on the show page in a p tag' do
    visit post_path(@post)
    expect(page).to have_css("p", text: "My post desc")
  end
end

describe 'form' do

end
