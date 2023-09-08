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
local_url = "http://localhost/orangehrm-5.5"
driver.get(local_url)
# driver.get("https://opensource-demo.orangehrmlive.com/web/index.php/auth/login")

# Find the username and password fields
username_field = WebDriverWait(driver, 5).until(EC.presence_of_element_located((By.XPATH, "//*[@class='oxd-form']/div[1]/div[1]/div[2]/input")))
password_field = WebDriverWait(driver, 5).until(EC.presence_of_element_located((By.XPATH, "//*[@class='oxd-form']/div[2]/div[1]/div[2]/input")))
login_button = WebDriverWait(driver, 5).until(EC.presence_of_element_located((By.XPATH, "//*[@class='oxd-form']/div[3]/button")))

# Enter the username and password
username_field.send_keys("Admin")
time.sleep(1)
password_field.send_keys("NewAdmin123#")
time.sleep(2)

# Find the login button and click it

login_button.click()
time.sleep(1)

# Navigate to a different page by clicking on a menu item
# Note: The XPath here is just a placeholder. You'll need to inspect the page to find the correct XPath.
menu_item = WebDriverWait(driver, 5).until(EC.presence_of_element_located((By.XPATH, "/html/body/div/div[1]/div[1]/aside/nav/div[2]/ul/li[3]/a")))
menu_item.click()
time.sleep(2)

Entitlements = WebDriverWait(driver, 5).until(EC.presence_of_element_located((By.XPATH, "/html/body/div/div[1]/div[1]/header/div[2]/nav/ul/li[3]")))
Entitlements.click()
time.sleep(2)

add_Entitlements = WebDriverWait(driver, 5).until(EC.presence_of_element_located((By.XPATH, "/html/body/div/div[1]/div[1]/header/div[2]/nav/ul/li[3]/ul/li[1]/a")))
add_Entitlements.click()
time.sleep(2)



# You can add additional code here to verify that the navigation was successful

time.sleep(3)
# Employee name
wait = WebDriverWait(driver, 10)
Employee_name = wait.until(EC.presence_of_element_located((By.XPATH, '/html/body/div/div[1]/div[2]/div[2]/div/div/form/div[2]/div/div/div/div[2]/div/div/input')))
Employee_name.send_keys("as")
time.sleep(3)
Employee_names = driver.find_elements(By.XPATH , "//div[@role='listbox']/div")
Employee_names_first = Employee_names[0]
Employee_names_first.click()



time.sleep(1)
# Leave type
wait = WebDriverWait(driver, 10)
Leave_type = wait.until(EC.presence_of_element_located((By.XPATH, '/html/body/div/div[1]/div[2]/div[2]/div/div/form/div[3]/div/div[1]/div/div[2]/div/div/div[2]/i')))
Leave_type.click()
time.sleep(2)
Leave_types = driver.find_elements(By.XPATH , "//div[@role='listbox']/div")
Leave_type_BrothersWedding = Leave_types[1]
Leave_type_BrothersWedding.click()




time.sleep(1)
# Entitlement
wait = WebDriverWait(driver, 10)
entitlement = wait.until(EC.presence_of_element_located((By.XPATH, '/html/body/div/div[1]/div[2]/div[2]/div/div/form/div[3]/div/div[3]/div/div[2]/input')))
entitlement.send_keys("01")








# save
time.sleep(5)
save_btn = driver.find_element(By.XPATH, "/html/body/div/div[1]/div[2]/div[2]/div/div/form/div[4]/button[2]")
save_btn.click()
time.sleep(2)


# update entitlements
time.sleep(1)
confirm = driver.find_element(By.XPATH, "/html/body/div/div[3]/div/div/div/div[3]/button[2]")
confirm.click()
time.sleep(4)

# Close the browser
driver.quit()