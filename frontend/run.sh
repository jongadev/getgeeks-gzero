robot -l NONE -o NONE -r NONE tasks/Delorean.robot
robot -x xunit.xml -d ./logs -v BROWSER:chromium -v HEADLESS:True tests
