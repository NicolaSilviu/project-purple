*** Settings ***
Documentation    Shop test cases
Library    SeleniumLibrary

Resource    ../../resources/general/General.robot
Resource    ../../resources/home/Home.robot
Resource    ../../resources/shop/Shop.robot

Test Teardown    General.Stop Test


*** Test Cases ***
[SHOP-001] Shop page is working 
    [Tags]  Functional    Shop
    Log  Step 1 Start Test 
    General.Start Test

    Log  Step 2 Go to Shop page 
    Home.Verify Home page is loaded 
    General.Click On Element   ${shop_btn}

    Log  Step 3 Validate Shop page elements
    Shop.Verify Shop page is loaded