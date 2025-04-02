<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=true displayMessage=false; section>
    <#if section = "header">
			<div>
				<img src="${url.resourcesPath}/img/arep-logo.svg">
				<h1>${msg("emailVerifyTitle")}</h1>
			</div>
        
    <#elseif section = "form">
        <p class="instruction">${msg("emailVerifyInstruction1",user.email)}</p> 
    <#elseif section = "info">
        <p class="instruction">
            ${msg("emailVerifyInstruction2")}
            <br/>
            <a href="${url.loginAction}">${msg("doClickHere")}</a> ${msg("emailVerifyInstruction3")}
        </p>
    </#if>
</@layout.registrationLayout>
