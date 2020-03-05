feature 'Entering player names' do
  scenario 'submitting their names' do
    sign_in_and_play
    expect(page).to have_content 'George vs. Barry'
  end
end