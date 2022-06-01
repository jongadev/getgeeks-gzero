robot -l NONE -o NONE -r NONE tasks/delorean.robot
robot -x xunit.xml -d ./logs -v BROWSER:chromium -v HEADLESS:True -e smoke tests
