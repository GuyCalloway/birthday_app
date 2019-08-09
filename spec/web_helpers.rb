
def sign_in_and_play1
  visit('/')
  fill_in "birthday", with: (Date.today)
  fill_in "player", with: "Guy"
  click_button 'Submit'
end

def sign_in_and_play2
  visit('/')
  fill_in "birthday", with: (Date.today - 7)
  fill_in "player", with: "Guy"
  click_button 'Submit'
end
