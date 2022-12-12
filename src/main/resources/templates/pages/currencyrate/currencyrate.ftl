<#import "../../components/macros/macros-fields.ftl" as macrosfields/>
<#import "../../components/macros/common.ftl" as common/>

<@common.page>
    <div class="headline">
        ${entityName}
    </div>

    <#if error??>
        <div class="error">
            ERROR: ${error}
        </div>
    </#if>

    <div class="entity-button-panel">
        <a href="${path}/new" class="btn" id="add">New</a>
    </div>

    <@macrosfields.pageNumbers pathPages/>

    <div class="cards">

        <#list entitys as entity>
            <div class="card">
                <@macrosfields.cardField id="currencyCode" fieldName="Currency code" value="${entity.currencyCode}"/>
                <@macrosfields.cardField id="rate" fieldName="Rate" value="${entity.rate}"/>
                <#if entity.date??>
                    <@macrosfields.cardField id="date" fieldName="Date" value="${(entity.date)?datetime}"/>
                </#if>
                <@macrosfields.entityEditButtons path="${path}/${entity.currencyCode}" code="${(entity.date)?string('dd.MM.yyyy')}"/>
            </div>
        </#list>
    </div>
</@common.page>