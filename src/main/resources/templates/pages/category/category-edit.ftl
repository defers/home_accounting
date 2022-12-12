<#import "../../components/macros/common.ftl" as common />
<#import "/spring.ftl" as spring/>

<@common.page>
    <h1 class="entity-caption">Category</h1>

    <form action="/category" method="post" class="form-entity" name="category">
        <@spring.bind path="category"/>

        <div class="form-entity__field-container">
            <label for="id" class="form-entity__label">Id: </label>
            <@spring.formInput "category.id" "class='form-entity__field' readonly"/>
        </div>
        <div class="form-entity__field-container">
            <label for="name" class="form-entity__label">Name: </label>
            <@spring.formInput "category.name" "class='form-entity__field'"/>
        </div>
        <div class="form-entity__field-container">
            <label for="parentId" class="form-entity__label">Parent: </label>
            <@spring.formSingleSelect "category.parentId", categoryOptions, "class='form-entity__field'"/>
        </div>
        <div class="form-entity__field-container">
            <label for="transactionType" class="form-entity__label">Transaction type: </label>
            <@spring.formSingleSelect "category.transactionType", transactionTypes, "class='form-entity__field'"/>
        </div>
        <div class="form-entity__field-container">
            <p>Deleted: <@spring.formCheckbox "category.deleted"/></p>
        </div>

        <#if category.createdDate??>
            <p>Created date: ${(category.createdDate).format('yyyy-MM-dd HH:mm:ss')}</p>
        </#if>
        <#if category.updatedDate??>
            <p>Updated date: ${(category.updatedDate).format('yyyy-MM-dd HH:mm:ss')}</p>
        </#if>

        <input type="submit" class="btn btn-submit" id="save-btn" value="Save"/>

    </form>

</@common.page>