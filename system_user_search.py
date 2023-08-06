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
# user_role = driver.find_element(By.XPATH, "/html/body/div/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[1]/div/div[2]/div/div[2]/div/div")
# user_role_admin = driver.find_element(By.XPATH, "//*[@id=\"app\"]/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[1]/div/div[2]/div/div[2]/div/div/div[2]/i")
username_system.send_keys("Admin")
dropdown_menu = driver.find_element(By.XPATH, "//*[@id=\"app\"]/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[1]/div/div[2]/div/div[2]/div/div/div[2]/i")
dropdown_menu.click()

# dropdown_menu.send_keys(Keys.DOWN)  # keydown event to highlight '--select--'
# dropdown_menu.send_keys(Keys.DOWN)  # keydown event to highlight 'Admin'
# dropdown_menu.send_keys(Keys.CLICK)  # keyup event to select 'Admin'

# option = driver.find_element(By.XPATH, "/html/body/div/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[1]/div/div[2]/div/div[2]/div/div/div[1][text()='Admin']")
# option.click()
# time.sleep(2)

wait = WebDriverWait(driver, 10)
option = wait.until(EC.presence_of_element_located((By.XPATH, "//div[text()='Admin']")))
option.click()

time.sleep(2)

# wait2 = WebDriverWait(driver, 30);
# wait2.until(ExpectedConditions.visibilityOfElementLocated(By.xpath("//*[@id=\"app\"]/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[1]/div/div[2]/div/div[2]/div/div/div[1]")));           

# user_role_dropdown =  Select(driver.findElement(By.xpath("//*[@id=\"app\"]/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[1]/div/div[2]/div/div[2]/div/div")));
# user_role_dropdown.selectByVisibleText("Admin");
# Select an option from the dropdown menu
# Note: You'll need to inspect the page to find the correct XPath for the option.

# admin_option = driver.find_element(By.XPATH, "/html/body/div/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[1]/div/div[2]/div/div[2]/div/div/div[1][contains(text(), 'Admin')]")
# admin_option.click()
# time.sleep(2)


# user_role.click()
# time.sleep(2)
# user_role_admin.click()
# user_role.select_by_value("Admin")
# user_role.select_by_index(1)
time.sleep(5)



# Close the browser
driver.quit()
