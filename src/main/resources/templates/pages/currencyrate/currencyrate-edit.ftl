<#import "../../components/macros/common.ftl" as common />
<#import "/spring.ftl" as spring/>

<@common.page>
    <h1 class="entity-caption">Currency rate</h1>

    <form action="/currencyrate" method="post" class="form-entity" name="currencyrate">
        <@spring.bind path="currencyrate"/>

        <div class="form-entity__field-container">
            <label for="date" class="form-entity__label">Date: </label>
            <@spring.formInput "currencyrate.date" "class='form-entity__field'" "date"/>
        </div>
        <div class="form-entity__field-container">
            <label for="code" class="form-entity__label">Currency: </label>
            <@spring.formSingleSelect "currencyrate.currencyCode", currencyOptions, "class='form-entity__field'"/>
        </div>
        <div class="form-entity__field-container">
            <label for="rate" class="form-entity__label">Rate: </label>
            <@spring.formInput "currencyrate.rate" "class='form-entity__field'"/>
        </div>

        <input type="submit" class="btn btn-submit" id="save-btn" value="Save"/>

    </form>

</@common.page>