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
menu_item = WebDriverWait(driver, 5).until(EC.presence_of_element_located((By.XPATH, "/html/body/div/div[1]/div[1]/aside/nav/div[2]/ul/li[5]/a")))
menu_item.click()
time.sleep(1)

vacancy = WebDriverWait(driver, 5).until(EC.presence_of_element_located((By.XPATH, "/html/body/div/div[1]/div[1]/header/div[2]/nav/ul/li[2]")))
vacancy.click()
time.sleep(1)

# You can add additional code here to verify that the navigation was successful


# job title
wait = WebDriverWait(driver, 10)
job_title = wait.until(EC.presence_of_element_located((By.XPATH, '/html/body/div/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[1]/div/div[1]/div/div[2]/div/div/div[2]/i')))
job_title.click()
time.sleep(2)
job_titles = driver.find_elements(By.XPATH , "//div[@role='listbox']/div")
job_title_employee = job_titles[1]
job_title_employee.click()


time.sleep(1)
# Vacancy
wait = WebDriverWait(driver, 10)
job_title = wait.until(EC.presence_of_element_located((By.XPATH, '/html/body/div/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[1]/div/div[2]/div/div[2]/div/div/div[2]/i')))
job_title.click()
time.sleep(2)
job_titles = driver.find_elements(By.XPATH , "//div[@role='listbox']/div")
job_title_employee = job_titles[1]
job_title_employee.click()




time.sleep(1)
# Hiring Manager
wait = WebDriverWait(driver, 10)
job_title = wait.until(EC.presence_of_element_located((By.XPATH, '/html/body/div/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[1]/div/div[3]/div/div[2]/div/div/div[2]/i')))
job_title.click()
time.sleep(2)
job_titles = driver.find_elements(By.XPATH , "//div[@role='listbox']/div")
job_title_employee = job_titles[1]
job_title_employee.click()





time.sleep(1)
# Status
wait = WebDriverWait(driver, 10)
job_title = wait.until(EC.presence_of_element_located((By.XPATH, '/html/body/div/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[1]/div/div[4]/div/div[2]/div/div/div[2]/i')))
job_title.click()
time.sleep(2)
job_titles = driver.find_elements(By.XPATH , "//div[@role='listbox']/div")
job_title_employee = job_titles[1]
job_title_employee.click()





time.sleep(5)
search_btn = driver.find_element(By.XPATH, "/html/body/div/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[2]/button[2]")

search_btn.click()


time.sleep(5)

# Close the browser
driver.quit()