<cfcomponent persistent="true" table="address">
    <cfproperty name="id" fieldtype="id" generator="increment">
    <cfproperty name="street">
    <cfproperty name="city">
    <cfproperty name="person" fieldtype="many-to-one" cfc="people" fkcolumn="personID">
</cfcomponent>