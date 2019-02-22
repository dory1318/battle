feature 'Attacking' do
  scenario 'attacking Player 2' do
  sign_in_and_play
  click_button 'Attack!'
  expect(page).not_to have_content 'Clare: 60HP'
  expect(page).to have_content 'Dora vs. Clare'
  expect(page).to have_content 'Clare: 50HP'
end
end
