feature "attacking a player" do
  scenario "player 1 attacks player 2" do
    sign_in_and_play
    click_link "Attack"
    expect(page).to have_content "George attacked Barry"
  end
  scenario "player 2 attacks player 1" do
  sign_in_and_play
  attack_and_ok
  click_link 'Attack'
  expect(page).to have_content "Barry attacked George"
  end
end