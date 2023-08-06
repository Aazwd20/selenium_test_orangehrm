from selenium import webdriver
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import Select
import time


# website = 'https://opensource-demo.orangehrmlive.com/web/index.php/auth/login'
# PATH = "C:\Program Files (x86)\chromedriver.exe"
# driver = webdriver.Chrome(PATH)
# driver.get(website)

driver = webdriver.Firefox()  # or webdriver.Chrome(), etc.
driver.get("https://opensource-demo.orangehrmlive.com/web/index.php/auth/login")

    # Click on the "Forgot your password?" link
forgot_password_link = WebDriverWait(driver, 5).until(EC.presence_of_element_located((By.CLASS_NAME, "orangehrm-login-forgot")))
forgot_password_link.click()
time.sleep(1)
    # Check that the page has a form for entering an email address
username = WebDriverWait(driver, 5).until(EC.presence_of_element_located((By.XPATH, "//*[@class='oxd-form-row']/div[1]/div[2]/input")))
username.send_keys("bhy91551@zbock.com")
time.sleep(2)
reset_password_button  = WebDriverWait(driver, 5).until(EC.presence_of_element_located((By.XPATH, "//*[@class='orangehrm-forgot-password-button-container']/button[2]")))
reset_password_button.click()
time.sleep(2)
driver.quit()
