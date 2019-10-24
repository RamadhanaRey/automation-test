# frozen_string_literal: true

#PRECOND
  Given(/^user logged in github with "([^"]*)" and "([^"]*)"$/) do |username, password|
    @browser = CrudGistPage.new
    visit (ENV['LINK_GIT'])
    @username = (ENV['USERNAME'])
    @password = (ENV['PASSWORD'])
    @browser.wait_until_username_visible(10)
    @browser.wait_until_password_visible(10)
    @browser.wait_until_button_sign_in_visible(10)
    @browser.put_username(@username)
    @browser.put_passwrod(@password)
    @browser.button_sign_in.click
  end

   And(/^user go to link GitHub Gist$/) do
    @browser = CrudGistPage.new
    visit (ENV['LINK_GIST'])
    @browser.wait_until_text_create_gist_visible(10)
  end
#END PRECOND

#CREATE_GIST

  When(/^user click button create public gist$/) do
    @browser.wait_until_button_create_gist_visible(10)
    @browser.button_create_gist.click
  end 

  When(/^user enter gist description "([^"]*)"$/) do |descriptions|
    @browser = CrudGistPage.new
    @descriptions = (ENV['GIST_DESCRIPTION'])
    @browser.wait_until_decription_visible(10)
    @browser.put_description(@descriptions)
  end

  When(/^user enter gist filename "([^"]*)"$/) do |filename|
    @browser = CrudGistPage.new
    @filename = (ENV['GIST_FILENAME'])
    @browser.wait_until_filename_visible(10)
    @browser.put_filename(@filename)
  end

  When(/^user enter gist content "([^"]*)"$/) do |content|
    @browser = CrudGistPage.new
    @content = (ENV['GIST_CONTENT'])
    @browser.wait_until_content_visible(10)
    @browser.put_content(@content)
  end

  When(/^user click button create public gist$/) do
    @browser.wait_until_button_create_visible(10)
    @browser.button_create.click
  end

  Then(/^user should see the gits filename is "([^"]*)"$/) do |filename|
    @browser = CrudGistPage.new
    @filename = (ENV['GIST_FILENAME'])
    @browser.assert_filename(@filename)
  end
#END_CREATE_GIST

#UPDATE_GIST
  When(/^user user click button edit$/) do
    @browser.wait_until_button_edit_visible(10)
    @browser.button_edit.click
  end

  When(/^user update gist description "([^"]*)"$/) do |descriptions|
    @browser = CrudGistPage.new
    @descriptions = (ENV['GIST_UPDATE_DESCRIPTION'])
    @browser.wait_until_decription_visible(10)
    @browser.clear()
    @browser.put_description(@descriptions)
  end

  When(/^user update gist filename "([^"]*)"$/) do |filename|
    @browser = CrudGistPage.new
    @filename = (ENV['GIST_UPDATE_FILENAME'])
    @browser.wait_until_filename_visible(10)
    @browser.clear()
    @browser.put_filename(@filename)
  end

  When(/^user enter gist content "([^"]*)"$/) do |content|
    @browser = CrudGistPage.new
    @content = (ENV['GIST_UPDATE_CONTENT'])
    @browser.wait_until_content_visible(10)
    @browser.clear()
    @browser.put_content(@content)
  end

  When(/^user click button update public gist$/) do
    @browser.wait_until_button_update_visible(10)
    @browser.button_update.click
  end

  Then(/^user should see the gits filename is "([^"]*)"$/) do |filename|
    @browser = CrudGistPage.new
    @filename = (ENV['GIST_UPDATE_FILENAME'])
    @browser.assert_filename(@filename)
  end
#END_UPDATE_GIST

#DELETE_GIST
  When(/^user click button delete$/) do
    @browser.wait_until_button_delete_visible(10)
    @browser.button_delete.click
  end

   When(/^And user enter button ok in confirmation delete modal$/) do
    @browser.send_keys(:enter)
  end
  
  Then(/^user successfully delete public gist$/) do |filename|
    @browser = CrudGistPage.new
    @browser.wait_until_filename_invisible(10)
  end

#END_DELETE_GIST

#VIEW_GIST
  When(/^user is in github gist page$/) do
    @browser.wait_until_button_create_visible(10)
  end 

  When(/^user verify list of gist$/) do
    @browser.wait_until_filename_invisible(10)
  end 
#END_VIEW_GIST




