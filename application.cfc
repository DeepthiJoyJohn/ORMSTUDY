<cfcomponent>    
    <cfset this.name = "ORMSTUDY"> 
    <cfset this.ormEnabled = true>
    <cfset this.datasource = "artists">
    <cfset this.ormSettings = {
        dialect = "org.hibernate.dialect.MySQLDialect", 
        dbCreate = "update", 
        eventHandling = "true", 
        flushAtRequestEnd = "true",
        entityCFCsLocation = "ORMSTUDY/Components/"      
    }>
    <cfset this.applicationTimeout = createTimeSpan(0, 0, 60, 0)> 
    <cfset this.sessionManagement = true> <!--- Enable session management --->
    <cfset this.sessionTimeout = createTimeSpan(0, 0, 50, 0)> 
    <cffunction name="onApplicationStart" returnType="boolean" output="false">
        <cfset application.datasoursename="artists">
        <cfreturn true>
    </cffunction>
    <cffunction name="onSessionStart" returnType="boolean" output="false">   
        <cfreturn true>
    </cffunction>
    <cffunction name="onRequestStart" returnType="boolean" output="false">
        <cfreturn true>
    </cffunction>
    <cffunction name="onRequest" returnType="boolean" output="true">
        <cfargument name="targetPage" type="string" required="true">
        <cfinclude template="#arguments.targetPage#">
        <cfreturn true>
    </cffunction>
    <cffunction name="onRequestEnd" returnType="void" output="false">  
    </cffunction>
    <cffunction name="onSessionEnd" returnType="void" output="false">       
    </cffunction>
    <cffunction name="onApplicationEnd" returnType="void" output="false">       
    </cffunction>
</cfcomponent>
