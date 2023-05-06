*** Settings ***
Library  SeleniumLibrary
Library  String
Variables  ../../variables/common_variables.py
Resource    GeneralLocators.robot


*** Keywords ***
Start Test
    Open Browser  ${url}  ${browser}
    Maximize Browser Window

Stop Test
    Sleep  1s
    SeleniumLibrary.Close All Browsers

Click On Element
    [Arguments]   ${element}
    Wait Until Element Is Visible   ${element}
    Click Element   ${element}

Hover On Element
    [Arguments]   ${element}
    Wait Until Element Is Visible   ${element}
    Mouse Over   ${element}
    Sleep    1s


Select the size
    [Arguments]    ${size}

    Click Element   ${SelectSize_drop}
    ${SelectSize_option_button}    String.Replace String    ${SelectSize_option_button}    index    ${size}       
    Click Element   ${SelectSize_option_button}


Select the color 
    [Arguments]    ${color}

    IF    ${color} not in ${color_string_list}    Fail    Color not available! Available colors are White, Green and Yellow. 

    FOR    ${color_string}    ${color_number}    IN ZIP    ${color_string_list}    ${color_number_list}
        ${color}    Set Variable If    ${color} == ${color_string}    ${color_number}    
    END

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

Check total price
    ${Price_text}   GET TEXT    ${TotalPrice_text}
    ${price}    Remove String   ${Price_text}   $
    ${price}    Convert To Number    ${price}
    Should Be True   ${price} < ${DressBudget}


Finish checkout
    FOR    ${element}    IN    ${Summary_ProceedToCheckout_button}    ${Address_ProceedToCheckout_button}    
        ...    ${Shipping_TermsOfService_button}    ${Shipping_ProceedToCheckout_button}    ${Payment_BankWire_button}    
        ...    ${Payment_ConfirmOrder_button}
        Wait Until Page Contains Element   ${element}
        Click On Element   ${element}
    END

Reload the page
    Reload Page
    