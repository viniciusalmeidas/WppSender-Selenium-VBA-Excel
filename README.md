# WppSender-Selenium-VBA-Excel

1. Install Selenium - https://github.com/florentbr/SeleniumBasic/releases</n>
2. Add Selenium Type Library on Tools >> References in Excel</n>
3. Update ChromeDriver to match with your Chrome version: http://chromedriver.chromium.org/downloads</n>
	  3.1. Copy and Paste chromedriver.exe to C:\Users\[*your user*]\AppData\Local\SeleniumBasic </n>
4. Open thwe file Selenium-TEXTO.xlsm on Excel and put the data and the WhatsApp Phones</n>

p.s: On Excel - 2nd Column: <b>WhatsApp Phone</b> (format:  (+) followed by the country code, city code, and local phone number) </n>  and 3rd Column: <b>Full Name</b> 

Phone | Name | Message
-------|--------|--------  
5521987422122 | Vinicius Almeida de Souza | Hello Vinícius, call me ishmael.
5511982736132 | John MacGraph | Hello John, call me ishmael.


<img width="404" alt="wpp-qr-code" src="https://user-images.githubusercontent.com/39459689/92387947-cff35400-f0ec-11ea-8141-b0cd9d0244ec.png">


## Unlike the Python automation available on my github in "[https://github.com/viniciusalmeidas/Wpp-Sender]", this excel project can ban the phone number used due to Facebook's mass messaging policies.
