<#import "../../components/macros/macros-fields.ftl" as macrosfields/>
<#import "../../components/macros/common.ftl" as common/>

<#--<#include "../components/open-body.ftl"/>-->
<@common.page>
<#include "../../components/header.ftl"/>
    <div class="headline">
        ${entityName}
    </div>


    <#if error??>
        <div class="error">
            ERROR: ${error}
        </div>
    </#if>

    <div class="cards">

    <#list entitys as entity>
        <div class="card">
            <@macrosfields.cardField id="name" fieldName="Name" value="${entity.name}"/>
            <@macrosfields.cardField id="code" fieldName="Code" value="${entity.code}"/>
            <@macrosfields.cardField id="active" fieldName="Active" value="${entity.active?c}"/>
            <@macrosfields.cardField id="deleted" fieldName="Deleted" value="${entity.deleted?c}"/>
            <@macrosfields.cardField id="createdDate" fieldName="Created date" value="${entity.createdDate}"/>
            <@macrosfields.cardField id="updatedDate" fieldName="Updated date" value="${entity.updatedDate}"/>
            <div class="container">
                <a href="${path}\${entity.code}" class="btn" id="edit">Edit</a>
                <a href="${path}\${entity.code}\delete" class="btn" id="delete">Delete</a>
            </div>
        </div>
    </#list>
    </div>
<#--<#include "../components/close-body.ftl"/>-->
</@common.page>