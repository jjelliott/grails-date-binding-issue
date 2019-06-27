# Date Binding issue sample project

Grails 4.0.0.RC2 ignores the datebinding config if it is defined in application.groovy. 

It correctly loads the same config if it is defined in application.yml.

## Instructions for reproduction:

Checkout either the "datebinding-in-app-dot-groovy" or the "datebinding-in-app-dot-yml" branch.

Load http://localhost:8080/dateBinding and click the button. 

Check the browser console. If you had the groovy branch checked out, you will see a type mismatch validation error. You will see "validated" if you had the yml branch checked out.