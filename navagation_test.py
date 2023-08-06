from selenium import webdriver
from selenium.webdriver.common.by import By
import time

# Initialize the driver
driver = webdriver.Firefox()  # or webdriver.Chrome(), etc.

# Navigate to the login page
driver.get("https://opensource-demo.orangehrmlive.com/web/index.php/auth/login")
time.sleep(5)

# Find the username and password fields
username_field = driver.find_element(By.XPATH, "//*[@class='oxd-form']/div[1]/div[1]/div[2]/input")
password_field = driver.find_element(By.XPATH, "//*[@class='oxd-form']/div[2]/div[1]/div[2]/input")
login_button = driver.find_element(By.XPATH, "//*[@class='oxd-form']/div[3]/button")

# Enter the username and password
username_field.send_keys("Admin")
time.sleep(2)
password_field.send_keys("admin123")
time.sleep(2)

# Find the login button and click it
login_button.click()
time.sleep(5)

# Navigate to a different page by clicking on a menu item
# Note: The XPath here is just a placeholder. You'll need to inspect the page to find the correct XPath.
menu_item = driver.find_element(By.XPATH, "/html/body/div/div[1]/div[1]/aside/nav/div[2]/ul/li[1]/a")
menu_item.click()
time.sleep(5)

# You can add additional code here to verify that the navigation was successful

# Close the browser
driver.quit()
