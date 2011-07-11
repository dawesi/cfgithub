<!---
	Name         : GitHubGeneral
	Author       : John C. Bland II and Russ Spivey
	Created      : January 11, 2010
	Last Updated : 7/10/2011
	Purpose		 : General integration for GitHub API (see - http://develop.github.com/p/general.html)
				 : ...and also covers Git Object APi (see - http://develop.github.com/p/object.html)
				 : ...and Network API (see - http://develop.github.com/p/network.html)
	
	LICENSE 
	Copyright 2010 John C. Bland II
	
	Licensed under the Apache License, Version 2.0 (the "License");
	you may not use this file except in compliance with the License.
	You may obtain a copy of the License at
	
	   http://www.apache.org/licenses/LICENSE-2.0
	
	Unless required by applicable law or agreed to in writing, software
	distributed under the License is distributed on an "AS IS" BASIS,
	WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
	See the License for the specific language governing permissions and
	limitations under the License.
--->
<cfcomponent displayname="GitHubGeneral" extends="GitHubCore" output="false">
<!--- PRIVATE --->
	<cffunction name="$prepGeneralUrl" access="private">
		<cfargument name="targetUrl" type="string" required="true" />
		<cfreturn variables.baseUrl & "/" & arguments.targetUrl  />
	</cffunction>

<!--- GENERAL --->
	<cffunction name="authenticate" access="public" returntype="any">
		<cfargument name="user" type="string" default="#variables.user#" hint="GitHub username" />
		<cfargument name="token" type="string" default="#variables.token#" hint="GitHub token" />
		<cfargument name="format" type="string" default="#variables.format#" />
		<cfreturn $getData(targetUrl=$prepGeneralUrl("users/{user}"), format=arguments.format) />
	</cffunction>
	
<!--- NETWORK --->


<!--- Git OBJECT --->
</cfcomponent>