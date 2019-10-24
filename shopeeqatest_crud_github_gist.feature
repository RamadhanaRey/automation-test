@shopee-test
Feature:  APIV4 Product to catalog assignment

    Background: user logged in
        Given user logged in github with "USERNAME" and "PASSWORD"
        When user go to link GitHub Gist


    @create-public-gist
    Scenario: Create Public Gist

        When user click create gist
        And user enter gist description "GIST_DESCRIPTION"
        And user enter gist filename "GIST_FILENAME"
        And user enter gist content "GIST_CONTENT"
        And user click button create public gist
        Then user should see the gits filename is "GIST_FILENAME"

    @edit-existing-public-gist
    Scenario: Edit Public Gist

        When user click button edit
        And user update gist description "GIST_UPDATE_DESCRIPTION"
        And user update gist filename "GIST_UPDATE_FILENAME"
        And user update gist content "GIST_UPDATE_CONTENT"
        And user click button update public gist
        Then user should see the gits filename is "GIST_UPDATE_FILENAME"

    @delete-existing-public-gist
    Scenario: Delete Public Gist

        When user click button delete
        And user enter button ok in confirmation delete modal
        Then user successfully delete public gist

    @view-list-public-gist
    Scenario: View Gist List

        When user is in github gist page
        Then user verify list of gist