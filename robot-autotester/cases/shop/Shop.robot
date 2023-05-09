*** Settings ***
Documentation    Shop test cases
Library    SeleniumLibrary

Resource    ../../resources/general/General.robot
Resource    ../../resources/home/Home.robot
Resource    ../../resources/shop/Shop.robot

Test Setup       General.Start Test
Test Teardown    General.Stop Test


*** Test Cases ***
[SHOP-001] Shop page is working 
    [Tags]  Functional    Shop
    Log  Step 1 Go to Shop page 
    Home.Verify Home page is loaded 
    General.Click On Element   ${shop_btn}

    Log  Step 2 Validate Shop page elements
    Shop.Verify Shop page is loaded