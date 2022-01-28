*** Settings ***
Library     SeleniumLibrary  
*** Test Cases ***
Testcase 2
#Please go to https://www.pomelofashion.com/th/en/ and focus automate testing on "My Shopping Bag" page
#A customer register into our system with their credential, here i have registered and logged in the customer
    Open Browser    https://www.pomelofashion.com/th/en/      Chrome
    Click Element   //span[text()='Login']
    Sleep           10s
    Input Text    //input[@name='email']                       preethia1221@gmail.com
    Input Text     //input[@name='password']                   Highheels@123
    Click Element   //button[@type='submit']/span[text()='Log In'] 
    Sleep           10s
#A customer adds the products any cetegory and click "Cart" Icon
    Click Element  //span[text()='Brands']
    Click Element   //a[text()='ALAND']
    Sleep           10s
    Click Element  //div[@class='product__link__description']/a/span[text()='3.3 Field Trip X Torn Denim Short Pants - Grey']
    sleep           15s
    Click Element   //button[text()='M']
    Click Element  //span[text()='Add To Bag']
    Sleep            10s
    Click Element   //span[text()='View My Shopping Bag']
    sleep              5s
    Click Element   //a[@class='cart-image-link']/../div/span/img
    sleep           5s
    Click Element    //span[text()='SHOP NOW']
    Sleep           10s
     Click Element  //span[text()='Brands']
    Click Element   //a[text()='ALAND']
    Maximize Browser Window
    Sleep           10s
    Scroll Element Into View    //div[@class='product__link__description']/a/span[text()='3.3 Field Trip X Torn Denim Short Pants - Grey']
    Click Element  //div[@class='product__link__description']/a/span[text()='3.3 Field Trip X Torn Denim Short Pants - Grey']
    sleep           15s
#A customer be able to adjusts size of product items or items.
    Click Element   //button[text()='M']
    Click Element  //span[text()='Add To Bag']
    Sleep            10s
    Click Element   //span[text()='View My Shopping Bag']
    sleep           5s
     Scroll Element Into View    //div[@class='cart-discount__main']/div/div/div/input
    Click Element   //div[@class='cart-discount__main']/div/div/div/input
#A customer be able to fill-in and click apply promo code. (even if promocode is not eligible)
    Input Text      //div[@class='cart-discount__main']/div/div/div/input       INVALID
    Click Element   //span[text()='Apply']
    Sleep           10s
#A customer be able to validate proceed to checkout button.
    Click Element   //span[text()='proceed to Checkout'] 
    sleep           5s
    CLick Element   //div[@class='method-wrapper']/div[2]/span
    Click Element   //button/span[text()='Confirm']
    


    
       
   
