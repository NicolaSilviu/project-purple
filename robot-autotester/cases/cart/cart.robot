*** Settings ***
Documentation    Cart test cases
Library    SeleniumLibrary

Resource    ../../resources/general/General.robot
Resource    ../../resources/cart/Cart.robot

Test Teardown    General.Close Browser


*** Test Cases ***
[CART-001] Cart can be accessed 
    [Documentation]  This test signs in the user
    [Tags]  Functional    Cart
    General.Go to website
    General.Click On Element    ${Cart_button}

[CART-002] Cart elements are displayed
    [Documentation]  This test signs in the user
    [Tags]  Functional    Cart
    General.Go to website
    General.Click On Element    ${Cart_button}
    FOR    ${element}    IN    ${Summary_ProceedToCheckout_button}    ${Address_ProceedToCheckout_button}    
        ...    ${Shipping_TermsOfService_button}    ${Shipping_ProceedToCheckout_button}    ${Payment_BankWire_button}    
        ...    ${Payment_ConfirmOrder_button}
        Wait Until Page Contains Element   ${element}
    END

[CART-003] Validate Cart is empty when user visits website 
    [Documentation]  This test signs in the user
    [Tags]  Functional    Cart
    General.Go to website
    ${cart_text}   Get Text    ${Cart_button}
    Should Contain    ${cart_text}   Empty
    General.Click On Element    ${Cart_button}
    Wait Until Element Is Visible    ${cart_alert}
       