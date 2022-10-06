
<#macro page>
    <!DOCTYPE html>
<html lang="en" xmlns:sec="http://www.springframework.org/security/tags">
<head>
    <#import "/spring.ftl" as spring/>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/css/style.css">
    <title>Test</title>
</head>
<body>
<#include "../header.ftl"/>
<main class="page-content">
<#nested/>
</main>
</body>

<script src="/js/main.js"></script>

</html>
</#macro>