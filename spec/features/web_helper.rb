def sign_in_and_play
  visit('/')
    fill_in :player_1, with: "George"
    fill_in :player_2, with: "Barry"
    click_on 'Submit'
end