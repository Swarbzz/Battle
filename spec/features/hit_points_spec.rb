feature "seeing health" do
  scenario 'Player 1s health' do
    sign_in_and_play
    expect(page).to have_content 'George: 100HP'
  end
  scenario 'Player 2s health' do
    sign_in_and_play
    expect(page). to have_content 'Barry: 100HP'
  end 
end