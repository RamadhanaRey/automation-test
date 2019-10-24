class CrudGistPage < SitePrism::Page

 element :username, 		    :xpath, 	   "//input[@id='login_field']"
 element :password, 		    :xpath, 	   "//input[@id='password']"
 element :button_sign_in, :xpath, 	   "//input[@type='submit']"
 element :create_gist, 		 :xpath, 	   "//*[text()='Create a gist']"	
 element :description, 		 :xpath,     "(//input[@class='form-control input-block input-contrast'])"
 element :filename, 		    :xpath,     "(//input[@class='form-control filename js-gist-filename js-blob-filename'])"
 element :content, 			    :xpath,     "//div[@class='CodeMirror-gutter CodeMirror-linenumbers']"
 element :button_create, 	:xpath,     "//button[@type='submit'][text()='Create public gist']"
 element :button_edit, 		 :xpath,     "(//*[@aria-label='Edit this Gist'])"
 element :button_delete, 	:xpath,     "(//*[@aria-label='Delete this Gist'])"
 element :button_update, 	:xpath,     "//*[@class='btn btn-primary']"


def put_filename(filename)
    filename.set(filename)
end



def assert_filename(filename)
    expect(filename).to have_text(filename)
end
