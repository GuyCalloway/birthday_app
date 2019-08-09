feature "Enter date" do

  scenario "player can enter date and name" do
   sign_in_and_play1
   expect(page).to have_content('Guy')
  end

  scenario "player can enter date and be redirected to a special page if its there birthday" do
   sign_in_and_play1
   expect(page).to have_content('its your birthday')
  end


  scenario "player can enter date and be redirected to page counting days till their birthday" do
   sign_in_and_play2
   expect(page).to have_content('only', '358')
  end

end
