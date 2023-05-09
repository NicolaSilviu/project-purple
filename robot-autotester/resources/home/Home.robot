*** Settings ***
Library    SeleniumLibrary
Library    String

Resource    ../general/General.robot
Resource    HomeLocators.robot


*** Keywords ***
Verify Home page is loaded    
    FOR   ${element}   IN   ${home_btn}   ${my_account_btn}   ${shop_btn}
        SeleniumLibrary.Wait Until Element Is Enabled   ${element}
    END

Dismiss blue modal
    SeleniumLibrary.Wait Until Element Is Visible   ${home_store_notice_dismiss}
    General.Click On Element   ${home_store_notice_dismiss}
    SeleniumLibrary.Wait Until Element Is Not Visible    ${home_store_notice_dismiss}