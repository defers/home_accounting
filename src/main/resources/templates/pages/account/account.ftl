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

    <div class="cards">

        <#list entitys as entity>
            <div class="card">
                <@macrosfields.cardField id="id" fieldName="Id" value="${entity.id}"/>
                <@macrosfields.cardField id="name" fieldName="Name" value="${entity.name}"/>
                <@macrosfields.cardField id="currencyCode" fieldName="Currency" value="${entity.currencyCode}"/>
                <@macrosfields.cardField id="active" fieldName="Active" value="${entity.active?c}"/>
                <@macrosfields.cardField id="deleted" fieldName="Deleted" value="${entity.deleted?c}"/>
                <@macrosfields.cardField id="commentary" fieldName="Commentary" value="${entity.commentary}"/>
                <@macrosfields.cardField id="sort" fieldName="Sort" value="${entity.sort}"/>
                <@macrosfields.cardField id="createdDate" fieldName="Created date" value="${(entity.createdDate).format('yyyy-MM-dd HH:mm:ss')}"/>
                <@macrosfields.cardField id="updatedDate" fieldName="Updated date" value="${(entity.updatedDate).format('yyyy-MM-dd HH:mm:ss')}"/>

                <@macrosfields.entityEditButtons path="${path}" code="${entity.id}"/>
            </div>
        </#list>
    </div>
</@common.page>