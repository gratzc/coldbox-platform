<cfset MailBean = Event.getValue("MailBean")><cfoutput>#getPlugin("messagebox").renderit()#<p><strong>Hello:</strong> #Event.getValue("firstname","No name Found")#</p><p>IntroMessage = #getResource("intromessage")#</p><hr><strong>Instance Hash: </strong> #event.getValue("mylogger").getHash()# <br><strong>Plugin Hash: &nbsp;&nbsp;&nbsp;</strong> #getPlugin("logger").getHash()#<br><br>#event.getValue("mylogger").getLogFullPath()#<Br>#getPlugin("logger").getLogFullPath()#<hr><input type="button" name="logentries" value="Call custom Plugin" onClick="window.location = 'index.cfm?event=ehGeneral.docustomplugin'"><cfif Event.getValue("usecustomplugin",false)>	<cfdump var="#getMyPlugin("myclientstorage").getvar("MyCustomVariable")#" label="Custom Variable"></cfif><hr><form name="testform" action="?event=ehGeneral.doFormBean" method="post" style="background-color: ##ffffdd">First Name:<input type="text" name="fname" value=""><br>Last Name:<input type="text" name="lname" value=""><br>Email:<input type="text" name="email" value=""><br><br><input type="submit" name="formbean" value="Submit Form Bean"></form><hr><input type="button" name="logentries" value="Log Entries" onClick="window.location = 'index.cfm?event=ehGeneral.doLog'"><input type="button" name="logentries" value="Clear Log" onClick="window.location = 'index.cfm?event=ehGeneral.doClearLog'">File Size: #NumberFormat(getPlugin("fileUtilities").FileSize(getSetting("ColdboxLogsLocation")))# bytes<div style="overflow: auto; width:600px; height: 200px; border:1px solid ##000000;background-color: ##FFFFF0;font-size:10px" ><pre>#getPlugin("FileUtilities").readFile(getSetting("ColdboxLogsLocation"))#</pre></div><hr><h3>Mail Settings:</h3><strong>Mail Server:</strong>   #MailBean.getserver()#<br><strong>Mail Port: </strong>    #MailBean.getport()#<br /><strong>Mail Username:</strong> #MailBean.getUsername()#<br /><strong>Mail Password:</strong> #MailBean.getPassword()#<br /><hr>CCV content variables <br>#Event.getValue("MyQuote")#<hr><p><strong>Permanent Storage Simple Var 'Luis' Exists:</strong> #getPlugin("clientstorage").exists("luis")#</p><p><strong>Permanent Storage Simple Var 'Luis' Value:</strong> #getPlugin("clientstorage").getvar("luis")#</p><p><strong>Permanent Storage Complex Var 'complexStruct' Exists:</strong> #getPlugin("clientstorage").exists("complexStruct")#</p><p><strong>Permanent Storage Complex Var 'complexStruct' Value:</strong> </p><cfdump var="#getPlugin("clientstorage").getvar("complexStruct")#"><cfset getplugin("clientstorage").deletevar("complexStruct")>Is Email Valid: isEmail("lmajano@gmail.com") #IsEmail('lmajano@gmail.com')#<p>&nbsp;</p>Path: #ExpandPath("../samples/applications/blogcfc/includes/udf.cfm")#File exists ( #fileExists(ExpandPath("../samples/applications/blogcfc/includes/udf.cfm"))# )<p>&nbsp;</p><cfif getColdboxocm().get("isColdfusionMX7")>I am the java class loader saying to you: #Event.getValue("HelloWorldObj").hello()#</cfif><br /><br /><hr>#renderView("datasourcedump")#<br><br><input type="button" name="clearbutton" value="Clear Application Scope" onClick="window.open('clearscope.cfm?type=application')"><input type="button" name="clearbutton" value="Clear Session Scope" onClick="window.open('clearscope.cfm?type=session')"><input type="button" name="clearbutton" value="Clear ALL Scopes" onClick="window.open('clearscope.cfm?type=all')"><hr>#dump(getSettingStructure(true))#</cfoutput>