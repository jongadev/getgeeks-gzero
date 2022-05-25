robot -l NONE -o NONE -r NONE tasks/delorean.robot
robot -d ./logs -v BROWSER:chromium -v HEADLESS:True tests/BeGeek.robot
