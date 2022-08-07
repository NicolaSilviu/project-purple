*** Settings ***
Library    SeleniumLibrary
Library    String

Resource    ../general/General.robot
Resource    CreateAccountLocators.robot


*** Keywords ***
Create account
    #go to sign up page
    Wait Until Element Is Visible   ${SignInButton}
    Click Element   ${SignInButton}
    Wait Until Element Is Visible   ${EmailAddressForm}
    Press Keys  ${EmailAddressForm}  ${EmailAddress}
    Click Element   ${EmailAddressSubmitButton}
    #fill in the sign up info
    Wait Until Element Is Visible   ${PersonalInformationTitleButton}
    Click Element   ${PersonalInformationTitleButton}
    Press Keys   ${PersonalInformationFirstNameForm}   ${FirstName}
    Press Keys   ${PersonalInformationLastNameForm}   ${LastName}
    Press Keys   ${PersonalInformationPasswordForm}   ${Password}
    Click Element   ${PersonalInformationDaysDrop}
    Click Element   ${PersonalInformationDaysOption}
    Click Element   ${PersonalInformationMonthsDrop}
    Click Element   ${PersonalInformationMonthsOption}
    Click Element   ${PersonalInformationYearsDrop}
    Click Element   ${PersonalInformationYearsOption}
    Click Element   ${PersonalInformationNewsletterButton}
    Click Element   ${PersonalInformationOffersButton}
    Press Keys   ${PersonalInformationAddressForm}   ${UserAddress}
    Press Keys   ${PersonalInformationCityForm}   ${City}
    Click Element   ${PersonalInformation_State_Drop}
    Click Element   ${PersonalInformation_State_Option}
    Press Keys   ${PersonalInformation_PostalCode_Form}   ${PostalCode}
    Press Keys   ${PersonalInformation_Phone_Form}   ${PhoneNumber}
    Click Element   ${PersonalInformation_Register_Button}