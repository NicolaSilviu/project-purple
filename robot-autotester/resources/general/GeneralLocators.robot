*** Settings ***

*** Variables ***

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
${Dress_Image_hover}   //*[@id="center_column"]/ul/li[2]/div/div[index]/div
${Dress_More_button}   //*[@id="center_column"]/ul/li[2]/div/div[index]/div[2]/a[2]


#Item details page locators
${Quantity_form}    //*[@id="quantity_wanted"]
${SelectSize_drop}   //*[@id="group_1"]
${SelectSize_option_button}   //*[@id="group_1"]/option['index']
${SelectColour_option_button}   //*[@id="color_'index'"]

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
