<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=false;  section>
    <#if section = "header">
        <#if messageHeader??>
					<div>
						<img src="${url.resourcesPath}/img/arep-logo.svg">
						<p>${kcSanitize(msg("${messageHeader}"))?no_esc}</p>
					</div>
            
        <#else>
          <#if message.summary == msg("accountUpdatedMessage")>
            <div>
              <img src="${url.resourcesPath}/img/arep-logo.svg">
              <h1>Connectez vous avec votre mot de passe personnalisé</h1>
            </div>
          <#else>
            <div>
              <img src="${url.resourcesPath}/img/arep-logo.svg">
              <h1>Configurez votre connexion</h1>
            </div>
          </#if>
        </#if>
    <#elseif section = "form">
    <div id="kc-info-message">
        <#if skipLink??>
          <#if (client.baseUrl)?has_content>
              <p><a href="${client.baseUrl}">${kcSanitize(msg("proceedWithAction"))?no_esc}</a></p>
          </#if>
        <#else>
            <#if pageRedirectUri?has_content>
                <p><a href="${pageRedirectUri}">${kcSanitize(msg("proceedWithAction"))?no_esc}</a></p>
            <#elseif actionUri?has_content>
                <p><a href="${actionUri}">${kcSanitize(msg("proceedWithAction"))?no_esc}</a></p>
            <#elseif (client.baseUrl)?has_content>
                <p><a href="${client.baseUrl}">${kcSanitize(msg("backToApplication"))?no_esc}</a></p>
            </#if>
        </#if>
    </div>
    </#if>
</@layout.registrationLayout>
