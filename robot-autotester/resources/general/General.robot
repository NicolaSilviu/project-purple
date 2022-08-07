*** Settings ***
Library  SeleniumLibrary
Library  String
Variables  ../../variables/common_variables.py
Resource    GeneralLocators.robot


*** Keywords ***

*** Keywords ***
Go to website
    Open Browser  ${url}  ${browser}
    Maximize Browser Window

Finish TestCase
    Close Browser

Go to option2 details
    Wait Until Page Contains Element   ${Dress2_Image_hover}
    Mouse Over   ${Dress2_Image_hover}
    Wait Until Element Is Enabled   ${Dress2_More_button}
    Click Element   ${Dress2_More_button}

Add item1 from option2 to cart
    Wait Until Page Contains Element   ${Quantity_form}
    Clear Element Text   ${Quantity_form}
    Press Keys   ${Quantity_form}   ${DressQuantity}
    Click Element   ${SelectSize_drop}
    Click Element   ${SelectSize_S_button}
    Click Element   ${SelectColour_White_button}
    Click Element   ${AddToCart_button}
    Sleep   5s
    Click Element   ${ContinueShopping_button}

Add item2 from option2 to cart
    Wait Until Page Contains Element   ${Quantity_form}
    Clear Element Text   ${Quantity_form}
    Press Keys   ${Quantity_form}   ${DressQuantity}
    Click Element   ${SelectSize_drop}
    Click Element   ${SelectSize_L_button}
    Click Element   ${SelectColour_Yellow_button}
    Click Element   ${AddToCart_button}
    Sleep   5s
    Click Element   ${ContinueShopping_button}

Go to option3 details
    Wait Until Page Contains Element   ${Dress3_Image_hover}
    Mouse Over   ${Dress3_Image_hover}
    Wait Until Element Is Enabled   ${Dress3_More_button}
    Click Element   ${Dress3_More_button}

Add item1 from option3 to cart
    Wait Until Page Contains Element   ${Quantity_form}
    Clear Element Text   ${Quantity_form}
    Press Keys   ${Quantity_form}   ${DressQuantity}
    Click Element   ${SelectSize_drop}
    Click Element   ${SelectSize_M_button}
    Click Element   ${SelectColour_Green_button}
    Click Element   ${AddToCart_button}
    Sleep   5s
    Click Element   ${ContinueShopping_button}

Add item2 from option3 to cart
    Wait Until Page Contains Element   ${Quantity_form}
    Clear Element Text   ${Quantity_form}
    Press Keys   ${Quantity_form}   ${DressQuantity}
    Click Element   ${SelectSize_drop}
    Click Element   ${SelectSize_L_button}
    Click Element   ${SelectColour_Yellow_button}
    Click Element   ${AddToCart_button}
    Sleep   5s
    Click Element   ${ContinueShopping_button}

Go to cart
    Click Element   ${Cart_button}

Check total price
    ${Price_text}   GET TEXT   xpath=${TotalPrice_text}
    ${price}=    Remove String        ${Price_text}   $
    ${price}=    Convert To Number    ${price}
    SHOULD BE TRUE   ${price} < ${DressBudget}

Finish checkout
#Summary page
    Wait Until Page Contains Element   ${Summary_ProceedToCheckout_button}
    Click Element   ${Summary_ProceedToCheckout_button}
#Address page
    Wait Until Page Contains Element    ${Address_ProceedToCheckout_button}
    Click Element   ${Address_ProceedToCheckout_button}
#Shipping page
    Wait Until Page Contains Element   ${Shipping_TermsOfService_button}
    Click Element   ${Shipping_TermsOfService_button}
    Wait Until Page Contains Element   ${Shipping_ProceedToCheckout_button}
    Click Element   ${Shipping_ProceedToCheckout_button}
#Select payment method
    Wait Until Page Contains Element   ${Payment_BankWire_button}
    Click Element   ${Payment_BankWire_button}
    Wait Until Page Contains Element   ${Payment_ConfirmOrder_button}
    Click Element   ${Payment_ConfirmOrder_button}

Reload the page
    Reload Page


