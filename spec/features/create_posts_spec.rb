require 'rails_helper.rb'



feature 'Creating Posts' do
  scenario 'can create job' do
    # visit root route
    visit '/'
    # clcik create post link
    click_link 'Create Post'
    # fill in the form with needed information(title and cpation of job)
    fill_in 'Title', with: 'title'
      fill_in 'Caption', with: 'caption'
    # click submit button
    click_button 'Create Update'
    # expect pagr to havr the content we submtted
    expect(page).to have_content('title')
    expect(page).to have_content('caption')
  end
  end
