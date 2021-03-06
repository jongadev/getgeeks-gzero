*Settings*

Documentation       Base Test

Library             Browser
Library             Collections
Library             String

Library             factories/Users.py


Resource            actions/_SharedActions.robot
Resource            actions/AuthActions.robot
Resource            actions/SignupActions.robot
Resource            actions/GeekActions.robot

Resource            Database.robot
Resource            Helpers.robot
Resource            Services.robot




*Variables*
${BASE_URL}         https://getgeeks-jonga.herokuapp.com




*Keywords*

Start Session
    New Browser          ${BROWSER}        headless=${HEADLESS}         slowMo=0:00:02         timeout=0:01:30
    New Page             ${BASE_URL}
    Set Viewport Size    1280   768
   
Finish Session 
    Take Screenshot     fullPage=true

