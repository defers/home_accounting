<#import "../../components/macros/common.ftl" as common />
<#import "/spring.ftl" as spring/>

<@common.page>
    <h1 class="entity-caption">Account</h1>

    <form action="/account" method="post" class="form-entity" name="account">
        <@spring.bind path="account"/>

        <div class="form-entity__field-container">
            <label for="id" class="form-entity__label">Id: </label>
            <@spring.formInput "account.id" "class='form-entity__field' readonly"/>
        </div>
        <div class="form-entity__field-container">
            <label for="name" class="form-entity__label">Name: </label>
            <@spring.formInput "account.name" "class='form-entity__field'"/>
        </div>
        <div class="form-entity__field-container">
            <label for="currency" class="form-entity__label">Currency: </label>
            <@spring.formSingleSelect "account.currencyCode", currencyOptions, "class='form-entity__field'"/>
        </div>
        <div class="form-entity__field-container">
            <label for="commentary" class="form-entity__label">Commentary: </label>
            <@spring.formInput "account.commentary" "class='form-entity__field'"/>
        </div>
        <div class="form-entity__field-container">
            <label for="sort" class="form-entity__label">Sort: </label>
            <@spring.formInput "account.sort" "class='form-entity__field'"/>
        </div>
        <div class="form-entity__field-container">
            <p>Deleted: <@spring.formCheckbox "account.deleted"/></p>
        </div>
        <div class="form-entity__field-container">
            <p>Active: <@spring.formCheckbox "account.active"/></p>
        </div>

        <#if account.createdDate??>
            <p>Created date: ${(account.createdDate).format('yyyy-MM-dd HH:mm:ss')}</p>
        </#if>
        <#if account.updatedDate??>
            <p>Updated date: ${(account.updatedDate).format('yyyy-MM-dd HH:mm:ss')}</p>
        </#if>

        <input type="submit" class="btn btn-submit" id="save-btn" value="Save"/>

    </form>

</@common.page>