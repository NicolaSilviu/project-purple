*** Settings ***
Library  SeleniumLibrary
Library  String
Variables  ../../variables/common_variables.py
Resource    GeneralLocators.robot


*** Keywords ***
Go to website
    Open Browser  ${url}  ${browser}
    Maximize Browser Window


Close Browser
    Sleep    1s
    Close Browser


Select the size
    [Arguments]    ${size}

    Click Element   ${SelectSize_drop}
    ${SelectSize_option_button}    String.Replace String    ${SelectSize_option_button}    index    ${size}       
    Click Element   ${SelectSize_option_button}


Select the color 
    [Arguments]    ${color}

    IF    ${color} not in ${color_options}    Fail    Color not available! 
    ${SelectColour_option_button}    String.Replace String    ${SelectColour_option_button}    index    ${color}       
    Click Element   ${SelectColour_option_button}


Go to option details
    [Arguments]    ${option_number}

    ${Dress_Image_hover}    String.Replace String    ${Dress_Image_hover}    index    ${option_number}       
    Wait Until Page Contains Element   ${Dress_Image_hover}
    Mouse Over   ${Dress_Image_hover}
    ${Dress_More_button}    String.Replace String    ${Dress_More_button}    index    ${option_number}       
    Wait Until Element Is Enabled   ${Dress_More_button}
    Click Element   ${Dress_More_button}


Add item from option to cart
    [Arguments]    ${color}    ${size}

    Wait Until Page Contains Element   ${Quantity_form}
    Clear Element Text   ${Quantity_form}
    Press Keys   ${Quantity_form}   ${DressQuantity}
    Select the size    ${size}
    Select the color    ${color}
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


