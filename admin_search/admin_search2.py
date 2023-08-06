from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.support.ui import Select

import time

# Initialize the driver
driver = webdriver.Firefox()  # or webdriver.Chrome(), etc.

# Navigate to the login page
driver.get("https://opensource-demo.orangehrmlive.com/")
time.sleep(4)

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
time.sleep(3)

# Navigate to a different page by clicking on a menu item
# Note: The XPath here is just a placeholder. You'll need to inspect the page to find the correct XPath.
menu_item = driver.find_element(By.XPATH, "/html/body/div/div[1]/div[1]/aside/nav/div[2]/ul/li[1]/a")
menu_item.click()
time.sleep(3)

# You can add additional code here to verify that the navigation was successful

username_system = driver.find_element(By.XPATH, "/html/body/div/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[1]/div/div[1]/div/div[2]/input")

username_system.send_keys("Admin")
# dropdown_menu = driver.find_element(By.XPATH, "//*[@id=\"app\"]/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[1]/div/div[2]/div/div[2]/div/div/div[2]/i")
# dropdown_menu.click()

# Wait for the dropdown options to be visible
# wait = WebDriverWait(driver, 10)
# option = wait.until(EC.visibility_of_element_located((By.XPATH, "//div[text(🙁'Admin']")))
# option.click()

# Find the dropdown menu
# user_role = driver.find_element(By.XPATH, '//*[@id="app"]/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[1]/div/div[2]/div/div[2]/div/div')
wait = WebDriverWait(driver, 10)
user_role = wait.until(EC.presence_of_element_located((By.XPATH, '//*[@id="app"]/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[1]/div/div[2]/div/div[2]/div/div')))
user_role.click()

user_role_admin = driver.find_element(By.XPATH , "//div[@role='listbox']")

user_role_admin.click()

# Create a Select object
# sel = Select(user_role)

# Select the option by visible text
# sel.select_by_visible_text("Admin")
# user_role.click()

time.sleep(5)

# Close the browser
driver.quit()