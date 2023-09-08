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
username_field.send_keys("Admin")
time.sleep(1)
password_field.send_keys("NewAdmin123#")
time.sleep(1)

# Find the login button and click it

login_button.click()
time.sleep(2)



# driver.get('http://localhost/orangehrm-5.5/web/index.php/pim/viewEmployeeList')

pim = WebDriverWait(driver, 5).until(EC.presence_of_element_located((By.XPATH, "/html/body/div/div[1]/div[1]/aside/nav/div[2]/ul/li[2]/a")))
pim.click()
time.sleep(1)

add_employee = WebDriverWait(driver, 10).until(EC.presence_of_element_located((By.XPATH, "/html/body/div/div[1]/div[1]/header/div[2]/nav/ul/li[3]/a")))
add_employee.click()
time.sleep(1)



first_name = WebDriverWait(driver, 5).until(EC.presence_of_element_located((By.XPATH, '//input[@class="oxd-input oxd-input--active orangehrm-firstname"]'))).send_keys('employe')
mid_name = WebDriverWait(driver, 5).until(EC.presence_of_element_located((By.XPATH, '//input[@class="oxd-input oxd-input--active orangehrm-middlename"]'))).send_keys('x')
last_name = WebDriverWait(driver, 5).until(EC.presence_of_element_located((By.XPATH, '//input[@class="oxd-input oxd-input--active orangehrm-lastname"]'))).send_keys('ONE')

# employee_id = WebDriverWait(driver, 10).until(EC.presence_of_element_located((By.XPATH, '(//input[@class="oxd-input oxd-input--active"])[2]')))
# employee_id.clear()  # this is to clear the auto-set id
# employee_id.send_keys('71257')

time.sleep(3)

# wait for the checkbox to be loaded
checkbox = WebDriverWait(driver, 5).until(EC.presence_of_element_located((By.XPATH, '//div[@class="oxd-switch-wrapper"]/label/input[@type="checkbox"]')))

# click the checkbox using JavaScript
driver.execute_script("arguments[0].click();", checkbox)



username = WebDriverWait(driver, 5).until(EC.presence_of_element_located((By.XPATH, '//input[@class="oxd-input oxd-input--active" and @autocomplete="off"]')))
username.send_keys("madaraX_Uchiha")



password = WebDriverWait(driver, 5).until(EC.presence_of_element_located((By.XPATH, '(//input[@type="password"])[1]')))
password.send_keys('Madara123#')
time.sleep(1)

confirm_password = WebDriverWait(driver, 5).until(EC.presence_of_element_located((By.XPATH, '(//input[@type="password"])[2]')))
confirm_password.send_keys(x)


addbtnx = WebDriverWait(driver,10).until(EC.element_to_be_clickable((By.XPATH, '/html/body/div/div[1]/div[2]/div[2]/div/div/form/div[2]/button[2]')))
time.sleep(1)
addbtnx.click()

time.sleep(7) #must add sleep for this process because database update takes time.


user_span = WebDriverWait(driver,10).until(EC.element_to_be_clickable((By.XPATH, '/html/body/div/div[1]/div[1]/header/div[1]/div[2]/ul/li/span')))
user_span.click()

logout = WebDriverWait(driver,10).until(EC.element_to_be_clickable((By.XPATH, '/html/body/div/div[1]/div[1]/header/div[1]/div[2]/ul/li/ul/li[4]/a')))
logout.click()
time.sleep(3)





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
#Obito_Uchiha
#Obito123#
# Find the login button and click it

login_button.click()
time.sleep(2)




# # Find the username and password fields
# username_field = WebDriverWait(driver,10).until(EC.element_to_be_clickable((By.XPATH, "//*[@class='oxd-form']/div[1]/div[1]/div[2]/input")))
# password_field = WebDriverWait(driver,10).until(EC.element_to_be_clickable((By.XPATH, "//*[@class='oxd-form']/div[2]/div[1]/div[2]/input")))
# login_button = WebDriverWait(driver,10).until(EC.element_to_be_clickable((By.XPATH, "//*[@class='oxd-form']/div[3]/button")))

# # Enter the username and password
# username_field.send_keys("madaraX_Uchiha")
# password_field.send_keys("madara123")

# # Find the login button and click it
# login_button.click()


# Close the browser
driver.quit()
