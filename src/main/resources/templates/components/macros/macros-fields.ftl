<#macro cardField id fieldName value>
    <p class="list-field" id=${id}>
        <label for=${id}>${fieldName}: </label>
        ${value}
    </p>
</#macro>

<#macro entityEditButtons path code>
     <div class="container">
         <a href="${path}\${code}\edit" class="btn" id="edit">Edit</a>
         <a href="${path}\${code}\delete" class="btn" id="delete">Delete</a>
     </div>
</#macro>

<#macro pageNumbers pathPages>
    <div class="page-numbers">
        <span>Page:</span>
        <#list pathPages as propName, propValue>
            <a href=${propValue} class="page-numbers--page">${propName}</a>
        </#list>
    </div>
</#macro>