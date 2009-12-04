<cfsetting enablecfoutputonly="true" />
<cfprocessingdirective pageencoding="utf-8" />
<!--- circuit: cArch --->
<!--- fuseaction: list --->
<cftry>
<cfset myFusebox.thisPhase = "requestedFuseaction">
<cfset myFusebox.thisCircuit = "cArch">
<cfset myFusebox.thisFuseaction = "list">
<cfif not isDefined("attributes.return")><cfset attributes.return = "" /></cfif>
<cfif not isDefined("attributes.startrow")><cfset attributes.startrow = "1" /></cfif>
<cfif not isDefined("attributes.contentHistID")><cfset attributes.contentHistID = "#createuuid()#" /></cfif>
<cfif not isDefined("attributes.notify")><cfset attributes.notify = "" /></cfif>
<cfif not isDefined("attributes.preview")><cfset attributes.preview = "0" /></cfif>
<cfif not isDefined("attributes.size")><cfset attributes.size = "20" /></cfif>
<cfif not isDefined("attributes.isNav")><cfset attributes.isNav = "0" /></cfif>
<cfif not isDefined("attributes.isLocked")><cfset attributes.isLocked = "0" /></cfif>
<cfif not isDefined("attributes.forceSSL")><cfset attributes.forceSSL = "0" /></cfif>
<cfif not isDefined("attributes.target")><cfset attributes.target = "_self" /></cfif>
<cfif not isDefined("attributes.searchExclude")><cfset attributes.searchExclude = "0" /></cfif>
<cfif not isDefined("attributes.restricted")><cfset attributes.restricted = "0" /></cfif>
<cfif not isDefined("attributes.relatedcontentid")><cfset attributes.relatedcontentid = "" /></cfif>
<cfif not isDefined("attributes.responseChart")><cfset attributes.responseChart = "0" /></cfif>
<cfif not isDefined("attributes.displayTitle")><cfset attributes.displayTitle = "0" /></cfif>
<cfif not isDefined("attributes.closeCompactDisplay")><cfset attributes.closeCompactDisplay = "" /></cfif>
<cfif not isDefined("attributes.compactDisplay")><cfset attributes.compactDisplay = "" /></cfif>
<cfif not isDefined("attributes.doCache")><cfset attributes.doCache = "1" /></cfif>
<cfif not isDefined("attributes.returnURL")><cfset attributes.returnURL = "" /></cfif>
<cfif not isDefined("attributes.homeID")><cfset attributes.homeID = "" /></cfif>
<cfif not session.mura.isLoggedIn>
<cflocation url="index.cfm?fuseaction=cLogin.main&returnURL=#urlEncodedFormat('index.cfm?#cgi.query_string#')#" addtoken="false">
<cfabort>
</cfif>
<cfif not application.permUtility.getModulePerm('00000000000000000000000000000000000',attributes.siteid)>
<cfset application.utility.backUp() >
</cfif>
<cfset request.rsTop = application.contentManager.getlist(attributes) >
<cfif attributes.moduleid neq '00000000000000000000000000000000001'>
<cfset request.nextn = application.utility.getNextN(request.rsTop,30,attributes.startrow) >
</cfif>
<!--- do action="vArch.ajax" --->
<cfset myFusebox.thisCircuit = "vArch">
<cfset myFusebox.thisFuseaction = "ajax">
<cfsavecontent variable="fusebox.ajax">
<cfif not isDefined("attributes.datasource")><cfset attributes.datasource = "#application.configBean.getDatasource()#" /></cfif>
<cfif not isDefined("attributes.parentid")><cfset attributes.parentid = "" /></cfif>
<cfif not isDefined("attributes.menuTitle")><cfset attributes.menuTitle = "" /></cfif>
<cfif not isDefined("attributes.title")><cfset attributes.title = "" /></cfif>
<cfif not isDefined("attributes.action")><cfset attributes.action = "" /></cfif>
<cfif not isDefined("attributes.ptype")><cfset attributes.ptype = "Page" /></cfif>
<cfif not isDefined("attributes.contentid")><cfset attributes.contentid = "" /></cfif>
<cfif not isDefined("attributes.contenthistid")><cfset attributes.contenthistid = "" /></cfif>
<cfif not isDefined("attributes.type")><cfset attributes.type = "Page" /></cfif>
<cfif not isDefined("attributes.body")><cfset attributes.body = "" /></cfif>
<cfif not isDefined("attributes.oldbody")><cfset attributes.oldbody = "" /></cfif>
<cfif not isDefined("attributes.oldfilename")><cfset attributes.oldfilename = "" /></cfif>
<cfif not isDefined("attributes.url")><cfset attributes.url = "" /></cfif>
<cfif not isDefined("attributes.filename")><cfset attributes.filename = "" /></cfif>
<cfif not isDefined("attributes.metadesc")><cfset attributes.metadesc = "" /></cfif>
<cfif not isDefined("attributes.metakeywords")><cfset attributes.metakeywords = "" /></cfif>
<cfif not isDefined("attributes.orderno")><cfset attributes.orderno = "0" /></cfif>
<cfif not isDefined("attributes.display")><cfset attributes.display = "0" /></cfif>
<cfif not isDefined("attributes.displaystart")><cfset attributes.displaystart = "" /></cfif>
<cfif not isDefined("attributes.displaystop")><cfset attributes.displaystop = "" /></cfif>
<cfif not isDefined("attributes.abstract")><cfset attributes.abstract = "" /></cfif>
<cfif not isDefined("attributes.frameid")><cfset attributes.frameid = "0" /></cfif>
<cfif not isDefined("attributes.abstract")><cfset attributes.abstract = "" /></cfif>
<cfif not isDefined("attributes.editor")><cfset attributes.editor = "0" /></cfif>
<cfif not isDefined("attributes.author")><cfset attributes.author = "0" /></cfif>
<cfif not isDefined("variables.editor")><cfset variables.editor = "0" /></cfif>
<cfif not isDefined("variables.author")><cfset variables.author = "0" /></cfif>
<cfif not isDefined("attributes.moduleid")><cfset attributes.moduleid = "00000000000000000000000000000000000" /></cfif>
<cfif not isDefined("attributes.objectid")><cfset attributes.objectid = "" /></cfif>
<cfif not isDefined("attributes.lastupdate")><cfset attributes.lastupdate = "" /></cfif>
<cfif not isDefined("attributes.siteid")><cfset attributes.siteid = "" /></cfif>
<cfif not isDefined("attributes.title")><cfset attributes.title = "" /></cfif>
<cfif not isDefined("attributes.topid")><cfset attributes.topid = "00000000000000000000000000000000001" /></cfif>
<cfif not isDefined("attributes.startrow")><cfset attributes.startrow = "1" /></cfif>
<cfif not isDefined("attributes.lastupdate")><cfset attributes.lastupdate = "#now()#" /></cfif>
<cfif not isDefined("session.viewDepth")><cfset session.viewDepth = "#application.settingsManager.getSite(attributes.siteid).getviewdepth()#" /></cfif>
<cfif not isDefined("session.nextN")><cfset session.nextN = "#application.settingsManager.getSite(attributes.siteid).getnextN()#" /></cfif>
<cfif not isDefined("session.keywords")><cfset session.keywords = "" /></cfif>
<cfif not isDefined("attributes.startrow")><cfset attributes.startrow = "1" /></cfif>
<cfif not isDefined("attributes.date1")><cfset attributes.date1 = "" /></cfif>
<cfif not isDefined("attributes.date2")><cfset attributes.date2 = "" /></cfif>
<cfif not isDefined("attributes.return")><cfset attributes.return = "" /></cfif>
<cfif not isDefined("attributes.forceSSL")><cfset attributes.forceSSL = "0" /></cfif>
<cfif not isDefined("attributes.closeCompactDisplay")><cfset attributes.closeCompactDisplay = "" /></cfif>
<cfif not isDefined("attributes.returnURL")><cfset attributes.returnURL = "" /></cfif>
<cfif attributes.orderno eq ''>
<cfset attributes.orderno = "0" />
</cfif>
<cfif isdefined('attributes.approved')>
<cfset attributes.active = "1" />
<cfelse>
<cfset attributes.active = "0" />
</cfif>
<cfif isdefined('attributes.approved')>
<cfset attributes.approved = "1" />
<cfelse>
<cfset attributes.approved = "0" />
</cfif>
<cfif not isDefined("attributes.locking")><cfset attributes.locking = "none" /></cfif>
<cftry>
<cfoutput><cfinclude template="../view/vArchitecture/ajax/dsp_javascript.cfm"></cfoutput>
<cfcatch type="missingInclude"><cfif len(cfcatch.MissingFileName) gte 23 and right(cfcatch.MissingFileName,23) is "ajax/dsp_javascript.cfm">
<cfthrow type="fusebox.missingFuse" message="missing Fuse" detail="You tried to include a fuse ajax/dsp_javascript.cfm in circuit vArch which does not exist (from fuseaction vArch.ajax).">
<cfelse><cfrethrow></cfif></cfcatch></cftry>
</cfsavecontent>
<!--- do action="vArch.list" --->
<cfset myFusebox.thisFuseaction = "list">
<cfsavecontent variable="fusebox.layout">
<cfif not isDefined("attributes.datasource")><cfset attributes.datasource = "#application.configBean.getDatasource()#" /></cfif>
<cfif not isDefined("attributes.parentid")><cfset attributes.parentid = "" /></cfif>
<cfif not isDefined("attributes.menuTitle")><cfset attributes.menuTitle = "" /></cfif>
<cfif not isDefined("attributes.title")><cfset attributes.title = "" /></cfif>
<cfif not isDefined("attributes.action")><cfset attributes.action = "" /></cfif>
<cfif not isDefined("attributes.ptype")><cfset attributes.ptype = "Page" /></cfif>
<cfif not isDefined("attributes.contentid")><cfset attributes.contentid = "" /></cfif>
<cfif not isDefined("attributes.contenthistid")><cfset attributes.contenthistid = "" /></cfif>
<cfif not isDefined("attributes.type")><cfset attributes.type = "Page" /></cfif>
<cfif not isDefined("attributes.body")><cfset attributes.body = "" /></cfif>
<cfif not isDefined("attributes.oldbody")><cfset attributes.oldbody = "" /></cfif>
<cfif not isDefined("attributes.oldfilename")><cfset attributes.oldfilename = "" /></cfif>
<cfif not isDefined("attributes.url")><cfset attributes.url = "" /></cfif>
<cfif not isDefined("attributes.filename")><cfset attributes.filename = "" /></cfif>
<cfif not isDefined("attributes.metadesc")><cfset attributes.metadesc = "" /></cfif>
<cfif not isDefined("attributes.metakeywords")><cfset attributes.metakeywords = "" /></cfif>
<cfif not isDefined("attributes.orderno")><cfset attributes.orderno = "0" /></cfif>
<cfif not isDefined("attributes.display")><cfset attributes.display = "0" /></cfif>
<cfif not isDefined("attributes.displaystart")><cfset attributes.displaystart = "" /></cfif>
<cfif not isDefined("attributes.displaystop")><cfset attributes.displaystop = "" /></cfif>
<cfif not isDefined("attributes.abstract")><cfset attributes.abstract = "" /></cfif>
<cfif not isDefined("attributes.frameid")><cfset attributes.frameid = "0" /></cfif>
<cfif not isDefined("attributes.abstract")><cfset attributes.abstract = "" /></cfif>
<cfif not isDefined("attributes.editor")><cfset attributes.editor = "0" /></cfif>
<cfif not isDefined("attributes.author")><cfset attributes.author = "0" /></cfif>
<cfif not isDefined("variables.editor")><cfset variables.editor = "0" /></cfif>
<cfif not isDefined("variables.author")><cfset variables.author = "0" /></cfif>
<cfif not isDefined("attributes.moduleid")><cfset attributes.moduleid = "00000000000000000000000000000000000" /></cfif>
<cfif not isDefined("attributes.objectid")><cfset attributes.objectid = "" /></cfif>
<cfif not isDefined("attributes.lastupdate")><cfset attributes.lastupdate = "" /></cfif>
<cfif not isDefined("attributes.siteid")><cfset attributes.siteid = "" /></cfif>
<cfif not isDefined("attributes.title")><cfset attributes.title = "" /></cfif>
<cfif not isDefined("attributes.topid")><cfset attributes.topid = "00000000000000000000000000000000001" /></cfif>
<cfif not isDefined("attributes.startrow")><cfset attributes.startrow = "1" /></cfif>
<cfif not isDefined("attributes.lastupdate")><cfset attributes.lastupdate = "#now()#" /></cfif>
<cfif not isDefined("session.viewDepth")><cfset session.viewDepth = "#application.settingsManager.getSite(attributes.siteid).getviewdepth()#" /></cfif>
<cfif not isDefined("session.nextN")><cfset session.nextN = "#application.settingsManager.getSite(attributes.siteid).getnextN()#" /></cfif>
<cfif not isDefined("session.keywords")><cfset session.keywords = "" /></cfif>
<cfif not isDefined("attributes.startrow")><cfset attributes.startrow = "1" /></cfif>
<cfif not isDefined("attributes.date1")><cfset attributes.date1 = "" /></cfif>
<cfif not isDefined("attributes.date2")><cfset attributes.date2 = "" /></cfif>
<cfif not isDefined("attributes.return")><cfset attributes.return = "" /></cfif>
<cfif not isDefined("attributes.forceSSL")><cfset attributes.forceSSL = "0" /></cfif>
<cfif not isDefined("attributes.closeCompactDisplay")><cfset attributes.closeCompactDisplay = "" /></cfif>
<cfif not isDefined("attributes.returnURL")><cfset attributes.returnURL = "" /></cfif>
<cfif attributes.orderno eq ''>
<cfset attributes.orderno = "0" />
</cfif>
<cfif isdefined('attributes.approved')>
<cfset attributes.active = "1" />
<cfelse>
<cfset attributes.active = "0" />
</cfif>
<cfif isdefined('attributes.approved')>
<cfset attributes.approved = "1" />
<cfelse>
<cfset attributes.approved = "0" />
</cfif>
<cfif not isDefined("attributes.locking")><cfset attributes.locking = "none" /></cfif>
<cfif attributes.moduleid eq '00000000000000000000000000000000003'>
<cfset variables.section = "Component Manager" />
<cftry>
<cfoutput><cfinclude template="../view/vArchitecture/dsp_flatlist.cfm"></cfoutput>
<cfcatch type="missingInclude"><cfif len(cfcatch.MissingFileName) gte 16 and right(cfcatch.MissingFileName,16) is "dsp_flatlist.cfm">
<cfthrow type="fusebox.missingFuse" message="missing Fuse" detail="You tried to include a fuse dsp_flatlist.cfm in circuit vArch which does not exist (from fuseaction vArch.list).">
<cfelse><cfrethrow></cfif></cfcatch></cftry>
</cfif>
<cfif attributes.moduleid eq '00000000000000000000000000000000004'>
<cfset variables.section = "Forms Manager" />
<cftry>
<cfoutput><cfinclude template="../view/vArchitecture/dsp_flatlist.cfm"></cfoutput>
<cfcatch type="missingInclude"><cfif len(cfcatch.MissingFileName) gte 16 and right(cfcatch.MissingFileName,16) is "dsp_flatlist.cfm">
<cfthrow type="fusebox.missingFuse" message="missing Fuse" detail="You tried to include a fuse dsp_flatlist.cfm in circuit vArch which does not exist (from fuseaction vArch.list).">
<cfelse><cfrethrow></cfif></cfcatch></cftry>
</cfif>
<cfif attributes.moduleid eq '00000000000000000000000000000000000'>
<cftry>
<cfoutput><cfinclude template="../view/vArchitecture/dsp_list.cfm"></cfoutput>
<cfcatch type="missingInclude"><cfif len(cfcatch.MissingFileName) gte 12 and right(cfcatch.MissingFileName,12) is "dsp_list.cfm">
<cfthrow type="fusebox.missingFuse" message="missing Fuse" detail="You tried to include a fuse dsp_list.cfm in circuit vArch which does not exist (from fuseaction vArch.list).">
<cfelse><cfrethrow></cfif></cfcatch></cftry>
</cfif>
</cfsavecontent>
<!--- do action="layout.display" --->
<cfset myFusebox.thisCircuit = "layout">
<cfset myFusebox.thisFuseaction = "display">
<cfif not isDefined("fusebox.ajax")><cfset fusebox.ajax = "" /></cfif>
<cfif not isDefined("fusebox.layout")><cfset fusebox.layout = "" /></cfif>
<cftry>
<cfoutput><cfinclude template="../view/layouts/template.cfm"></cfoutput>
<cfcatch type="missingInclude"><cfif len(cfcatch.MissingFileName) gte 12 and right(cfcatch.MissingFileName,12) is "template.cfm">
<cfthrow type="fusebox.missingFuse" message="missing Fuse" detail="You tried to include a fuse template.cfm in circuit layout which does not exist (from fuseaction layout.display).">
<cfelse><cfrethrow></cfif></cfcatch></cftry>
<cfcatch><cfrethrow></cfcatch>
</cftry>

