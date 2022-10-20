<#import "../../components/macros/common.ftl" as common />
<#import "/spring.ftl" as spring/>

<@common.page>
    <h1 class="entity-caption">Currency</h1>

    <form action="/payee" method="post" class="form-entity" name="payee">
        <@spring.bind path="payee"/>

        <div class="form-entity__field-container">
            <label for="code" class="form-entity__label">Id: </label>
            <@spring.formInput "payee.id" "class='form-entity__field'"/>
        </div>
        <div class="form-entity__field-container">
            <label for="name" class="form-entity__label">Name: </label>
            <@spring.formInput "payee.name" "class='form-entity__field'"/>
        </div>
        <div class="form-entity__field-container">
            <p>Deleted: <@spring.formCheckbox "payee.deleted"/></p>
        </div>
        <div class="form-entity__field-container">
            <p>Active: <@spring.formCheckbox "payee.active"/></p>
        </div>

        <#if payee.createdDate??>
        <p>Created date: ${(payee.createdDate).format('yyyy-MM-dd HH:mm:ss')}</p>
        </#if>
        <#if payee.updatedDate??>
        <p>Updated date: ${(payee.updatedDate).format('yyyy-MM-dd HH:mm:ss')}</p>
        </#if>

        <input type="submit" class="btn btn-submit" id="save-btn" value="Save"/>

    </form>

</@common.page>