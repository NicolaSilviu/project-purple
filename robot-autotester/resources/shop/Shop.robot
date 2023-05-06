*** Settings ***
Library    SeleniumLibrary
Library    String

Resource    ../general/General.robot
Resource    ShopLocators.robot


*** Keywords ***
Verify Shop page is loaded
    Wait Until Element Is Visible   ${shop_page_header}
