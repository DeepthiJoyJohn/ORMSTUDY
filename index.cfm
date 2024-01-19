<html>
    <head>
        <title>ORM Study</title>         
    </head>
    <body> 
        <cfoutput>            
            <form action="" method="post" id="myForm" name="myForm">              
                <cfset person = createObject("component", "Components.people")>                
                <cfset person.setFirstName("John")>
                <cfset person.setLastName("Doe")>
                <cfset EntitySave(person)>   <!--saving--> 
                <cfset employee = EntityLoad('people', 2, true)>
                <cfset EntityDelete(employee)>  <!---Delete--->  
                <cfset employee1 = EntityLoad('people', 1, true)><!---loading entity and updating--->
                <cfset employee1.setFirstName("newFirstName")>
                <cfset EntitySave(employee1)>
            </form>                   
        </cfoutput>          
    </body>     
</html>