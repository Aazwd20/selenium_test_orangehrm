from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
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
username_field.send_keys("madaraX_Uchiha")
time.sleep(1)
password_field.send_keys("Madara123#")
time.sleep(1)

# Find the login button and click it

login_button.click()
time.sleep(2)



# driver.get('http://localhost/orangehrm-5.5/web/index.php/pim/viewEmployeeList')

time_nav = WebDriverWait(driver, 5).until(EC.presence_of_element_located((By.XPATH, "/html/body/div/div[1]/div[1]/aside/nav/div[2]/ul/li[2]/a")))
time_nav.click()
time.sleep(1)

attendance_span = WebDriverWait(driver, 10).until(EC.presence_of_element_located((By.XPATH, "/html/body/div/div[1]/div[1]/header/div[2]/nav/ul/li[2]/span/i")))
attendance_span.click()
time.sleep(1)

punch_in = WebDriverWait(driver, 10).until(EC.presence_of_element_located((By.XPATH, "/html/body/div/div[1]/div[1]/header/div[2]/nav/ul/li[2]/ul/li[2]/a")))
punch_in.click()
time.sleep(1)



note = WebDriverWait(driver, 5).until(EC.presence_of_element_located((By.XPATH, '/html/body/div/div[1]/div[2]/div[2]/div/div/div/form/div[2]/div/div/div/div[2]/textarea')))
note.send_keys('Present')

# employee_id = WebDriverWait(driver, 10).until(EC.presence_of_element_located((By.XPATH, '(//input[@class="oxd-input oxd-input--active"])[2]')))
# employee_id.clear()  # this is to clear the auto-set id
# employee_id.send_keys('71257')

time.sleep(2)


btn_in = WebDriverWait(driver, 5).until(EC.presence_of_element_located((By.XPATH, '/html/body/div/div[1]/div[2]/div[2]/div/div/div/form/div[3]/button')))
btn_in.click()

time.sleep(4)

# Close the browser
driver.quit()
