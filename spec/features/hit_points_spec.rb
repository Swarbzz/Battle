feature "seeing health" do
  scenario 'Player 1s health' do
    sign_in_and_play
    expect(page).to have_content 'George: 100HP'
  end
  scenario 'Player 2s health' do
    sign_in_and_play
    expect(page). to have_content 'Barry: 100HP'
  end 
  scenario " reduce Player 1 HP by 10" do
    sign_in_and_play
    attack_and_ok
    attack_and_ok
    expect(page).not_to have_content 'George: 100HP'
    expect(page).to have_content 'George: 90HP'
  end
end