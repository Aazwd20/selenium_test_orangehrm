from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
import time

# Initialize the driver
driver = webdriver.Firefox()  # or webdriver.Chrome(), etc.

# Navigate to the login page
driver.get("https://opensource-demo.orangehrmlive.com/web/index.php/auth/login")
time.sleep(6)

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
time.sleep(2)

# Navigate to a different page by clicking on a menu item
# Note: The XPath here is just a placeholder. You'll need to inspect the page to find the correct XPath.
menu_item = driver.find_element(By.XPATH, "/html/body/div/div[1]/div[1]/aside/nav/div[2]/ul/li[1]/a")
menu_item.click()
time.sleep(3)

# You can add additional code here to verify that the navigation was successful

username_system = driver.find_element(By.XPATH, "/html/body/div/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[1]/div/div[1]/div/div[2]/input")
# employee_name = driver.find_element(By.XPATH, "/html/body/div/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[1]/div/div[3]/div/div[2]/div/div/input")
search = driver.find_element(By.XPATH, "/html/body/div/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[2]/button[2]")

username_system.send_keys("Cheeku")

# dropdown_menu = driver.find_element(By.XPATH, "//*[@id=\"app\"]/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[1]/div/div[2]/div/div[2]/div/div/div[2]/i")
# dropdown_menu.click()

# # Wait for the dropdown options to be visible
# wait = WebDriverWait(driver, 10)
# option = wait.until(EC.visibility_of_element_located((By.XPATH, "//div[text()='Admin']")))
# option.click()


# employee_name.send_keys("Virat Kohli")

# dropdown_menu = driver.find_element(By.XPATH, "/html/body/div/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[1]/div/div[4]/div/div[2]/div/div")
# "/html/body/div/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[1]/div/div[4]/div/div[2]/div/div/div[1]"
# dropdown_menu.click()

# # Wait for the dropdown options to be visible
# wait = WebDriverWait(driver, 10)
# option = wait.until(EC.visibility_of_element_located((By.XPATH, "/div[1][text()='Enabled']")))
# option.click()

search.click()

time.sleep(10)

# Close the browser
driver.quit()
