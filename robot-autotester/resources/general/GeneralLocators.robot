*** Settings ***

*** Variables ***
#Home page locators
${SignInButton}  //a[@class="login"]

#my-account page locators
${EmailAddressForm}  //*[@id="email_create"]
${EmailAddressSubmitButton}  //*[@id="SubmitCreate"]
${EmailAddressSignInForm}   //*[@id="email"]
${PasswordSignInForm}   //*[@id="passwd"]
${SubmitSignInButton}    //*[@id="SubmitLogin"]

#account-creation page locators
${PersonalInformationTitleButton}   //*[@id="id_gender1"]
${PersonalInformationFirstNameForm}   //*[@id="customer_firstname"]
${PersonalInformationLastNameForm}   //*[@id="customer_lastname"]
${PersonalInformationPasswordForm}   //*[@id="passwd"]
${PersonalInformationDaysDrop}   //*[@id="days"]
${PersonalInformationDaysOption}   //*[@id="days"]/option[12]
${PersonalInformationMonthsDrop}   //*[@id="months"]
${PersonalInformationMonthsOption}   //*[@id="months"]/option[9]
${PersonalInformationYearsDrop}   //*[@id="years"]
${PersonalInformationYearsOption}   //*[@id="years"]/option[31]
${PersonalInformationNewsletterButton}   //*[@id="newsletter"]
${PersonalInformationOffersButton}   //*[@id="optin"]
${PersonalInformationAddressForm}   //*[@id="address1"]
${PersonalInformationCityForm}   //*[@id="city"]
${PersonalInformation_State_Drop}   //*[@id="id_state"]
${PersonalInformation_State_Option}   //*[@id="id_state"]/option[22]
${PersonalInformation_PostalCode_Form}   //*[@id="postcode"]
${PersonalInformation_Phone_Form}   //*[@id="phone_mobile"]
${PersonalInformation_Register_Button}   //*[@id="submitAccount"]

#my-account page locators
${Dresses_hover}   //*[@id="block_top_menu"]/ul/li[2]/a
${SummerDresses_button}   //*[@id="block_top_menu"]/ul/li[2]/ul/li[3]/a
${Dress2_Image_hover}   //*[@id="center_column"]/ul/li[2]/div/div[1]/div
${Dress2_More_button}   //*[@id="center_column"]/ul/li[2]/div/div[2]/div[2]/a[2]
${Dress3_Image_hover}   //*[@id="center_column"]/ul/li[3]/div/div[1]/div
${Dress3_More_button}   //*[@id="center_column"]/ul/li[3]/div/div[2]/div[2]/a[2]
${Cart_button}   //*[@id="header"]/div[3]/div/div/div[3]/div/a

#Item details page locators
${Quantity_form}    //*[@id="quantity_wanted"]
${SelectSize_drop}   //*[@id="group_1"]
${SelectSize_S_button}   //*[@id="group_1"]/option[1]
${SelectSize_M_button}   //*[@id="group_1"]/option[2]
${SelectSize_L_button}   //*[@id="group_1"]/option[3]
${SelectColour_White_button}   //*[@id="color_8"]
${SelectColour_Green_button}   //*[@id="color_15"]
${SelectColour_Yellow_button}   //*[@id="color_16"]
${AddToCart_button}   //*[@id="add_to_cart"]/button
${ContinueShopping_button}   //*[@id="layer_cart"]/div[1]/div[2]/div[4]/span

#Order page locators
${TotalPrice_text}   //*[@id="total_price_container"]
${Summary_ProceedToCheckout_button}   //*[@id="center_column"]/p[2]/a[1]
${Address_ProceedToCheckout_button}   //*[@id="center_column"]/form/p/button
${Shipping_TermsOfService_button}   //*[@id="cgv"]
${Shipping_ProceedToCheckout_button}   //*[@id="form"]/p/button
${Payment_BankWire_button}   //*[@id="HOOK_PAYMENT"]/div[1]/div/p/a
${Payment_ConfirmOrder_button}   //*[@id="cart_navigation"]/button
