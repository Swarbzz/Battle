feature "reduced hitpoints" do
  scenario "Reduces Player2 hitpoints" do
    sign_in_and_play
    click_link "Attack"
    expect(page).not_to have_content "Barry: 100HP"
    expect(page).to have_content "Barry: 90HP"
  end
end