*** Settings ***

*** Variables ***
${home_background_img}    //img[@width='1600' and @height='1067' or @src[contains(.,'carrera')]]
${home_title}    //div[@class='beta site-title']/a[contains(text(),'Vroom Shop')]
${home_store_notice}    //p[@class='woocommerce-store-notice demo_store' and contains(text(),'Remember to stay hydrated.')]
${home_store_notice_dismiss}    //a[@class="woocommerce-store-notice__dismiss-link"]
${home_cart_component}    //a[@class="cart-contents"]
${home_input_search}    //input[@type="search"]
${home_product_list}    //div[@class="wc-block-grid wp-block-product-new wc-block-product-new has-3-columns has-multiple-rows"]
${home_whit_background}   //body[contains(@style, 'background-color: #fff']
${home_img_text}   //p[@class="has-text-align-center has-large-font-size"]
