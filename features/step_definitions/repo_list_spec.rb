Given('access home') do
  visit "https://repo-listing.web.app/"
end

When('add the repository {string} from {string}') do |repository_name, user|
  find('input[name=repository__input]').set "#{user}/#{repository_name}"
  click_button('Add')
end

Then('{string} should appear on the repository list') do |repository_name|
  expect(find('main ul')).to have_content(repository_name)
end

When('clears list') do
  click_button('Clear')
end

Then('repository list should be empty') do
  expect(find('main ul').has_content?).to be_falsey
  log(find('main ul').has_no_content?)
  sleep 5
end