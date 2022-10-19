<#import "../../components/macros/common.ftl" as common />
<#import "/spring.ftl" as spring/>

<@common.page>
    <h1 class="entity-caption">Currency</h1>

    <form action="/currency" method="post" class="form-entity" name="currency">
        <@spring.bind path="currency"/>

        <div class="form-entity__field-container">
            <label for="code" class="form-entity__label">Code: </label>
            <@spring.formInput "currency.code" "class='form-entity__field'"/>
        </div>
        <div class="form-entity__field-container">
            <label for="name" class="form-entity__label">Name: </label>
            <@spring.formInput "currency.name" "class='form-entity__field'"/>
        </div>
        <div class="form-entity__field-container">
            <p>Deleted: <@spring.formCheckbox "currency.deleted"/></p>
        </div>
        <div class="form-entity__field-container">
            <p>Active: <@spring.formCheckbox "currency.active"/></p>
        </div>

        <#if currency.createdDate??>
        <p>Created date: ${(currency.createdDate).format('yyyy-MM-dd HH:mm:ss')}</p>
        </#if>
        <#if currency.updatedDate??>
        <p>Updated date: ${(currency.updatedDate).format('yyyy-MM-dd HH:mm:ss')}</p>
        </#if>

        <input type="submit" class="btn btn-submit" id="save-btn" value="Save"/>

    </form>

</@common.page>