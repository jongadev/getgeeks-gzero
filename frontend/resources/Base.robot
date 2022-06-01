*Settings*

Documentation       Base Test

Library             Browser
Library             Collections

Library             factories/Users.py


Resource            actions/_SharedActions.robot
Resource            actions/AuthActions.robot
Resource            actions/signupActions.robot
Resource            actions/GeekActions.robot

Resource            Database.robot
Resource            Helpers.robot




*Variables*
${BASE_URL}         https://getgeeks-jonga.herokuapp.com

${timeout}         50s


*Keywords*

Start Session
    New Browser          ${BROWSER}        headless=${HEADLESS}         slowMo=00:00:00     timeout=${timeout}
    New Page             ${BASE_URL}
    Set Viewport Size    1280   768

Finish Session 
    Take Screenshot     fullPage=true

