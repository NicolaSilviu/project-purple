*** Settings ***
Documentation    Home test cases
Library    SeleniumLibrary

Resource    ../../resources/general/General.robot
Resource    ../../resources/home/Home.robot

Test Setup       General.Start Test
Test Teardown    General.Stop Test


*** Test Cases ***
[HOME-001] Home page is working 
    [Tags]  Functional    Home
    Log  Step 1 Validate Home page elements 
    Home.Verify Home page is loaded 

[HOME-002] Home page contains background image
    [Tags]  Functional    Home
    Log  Step 1 Validate Home page elements 
    Home.Verify Home page is loaded 

    Log  Step 2 Validate Home page background image element 
    SeleniumLibrary.Wait Until Element Is Visible   ${home_background_img}

[HOME-003] Home page contains title
    [Tags]  Functional    Home
    Log  Step 1 Validate Home page elements 
    Home.Verify Home page is loaded 

    Log  Step 2 Validate Home page title element 
    SeleniumLibrary.Wait Until Element Is Visible   ${home_title}

[HOME-004] Home page contains blue modal
    [Tags]  Functional    Home
    Log  Step 1 Validate Home page elements 
    Home.Verify Home page is loaded 

    Log  Step 2 Validate Home page blue modal element
    SeleniumLibrary.Wait Until Element Is Visible    ${home_store_notice}

[HOME-005] Home page contains cart component
    [Tags]  Functional    Home
    Log  Step 1 Validate Home page elements 
    Home.Verify Home page is loaded 

    Log  Step 2 Validate Home page cart element
    SeleniumLibrary.Wait Until Element Is Visible   ${home_cart_component}

[HOME-006] Home page contains search component
    [Tags]  Functional    Home
    Log  Step 1 Validate Home page elements 
    Home.Verify Home page is loaded 

    Log  Step 2 Validate Home page search element
    SeleniumLibrary.Wait Until Element Is Visible   ${home_input_search} 

[HOME-007] Home page dismiss blue modal
    [Tags]  Functional    Home
    Log  Step 1 Validate Home page elements 
    Home.Verify Home page is loaded 

    Log  Step 2 Dismiss blue modal
    Home.Dismiss blue modal

[HOME-008] Home page contains product list 
    [Tags]  Functional    Home
    Log  Step 1 Validate Home page elements 
    Home.Verify Home page is loaded 

    Log  Step 2 Validate Home page product list element
    SeleniumLibrary.Wait Until Element Is Visible   ${home_product_list} 

[HOME-009] Home page background is white
    [Tags]  Functional    Home
    Log  Step 1 Validate Home page elements 
    Home.Verify Home page is loaded

    Log  Step 2 Validate Home page background element color is white
    ${the_body}   SeleniumLibrary.Get WebElement   //body
    ${bg_color}    Call Method    ${the_body}    value_of_css_property    background-color
    BuiltIn.Should Be Equal As Strings   ${home_background_color_white}   ${bg_color}

[HOME-010] Home page background image contains text
    [Tags]  Functional    Home
    Log  Step 1 Validate Home page elements 
    Home.Verify Home page is loaded 

    Log  Step 2 Validate Home page background image element contains text
    ${element}  SeleniumLibrary.Get WebElement    ${home_img_text}
    ${element_text}  SeleniumLibrary.Get Text   ${element}
    BuiltIn.Should Be Equal As Strings   ${element_text}  ${home_img_text_string}
