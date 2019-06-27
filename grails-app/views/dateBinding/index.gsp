<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Welcome to Grails</title>
</head>
<body>

<input type="hidden" id="slashes" value="06/27/2019"/>
<button type="button" id="submitSlashes" onclick='post("/dateBinding/validateDate", {exDate: document.querySelector("#slashes").value}).then(res => res.text()).then(text=> console.log(text))'>Submit with date as "06/27/2019"</button>

<script>
function post(url, data) {
    if (data) {
        return fetch(url, {
            credentials: "same-origin", // Default on chrome 68 and above
            method: "POST",
            headers: {"x-requested-with": "fetch", "Content-Type": "application/json"},
            body: JSON.stringify(data)
        });
    } else {
        return fetch(url, {
            credentials: "same-origin", // Default on chrome 68 and above
            method: "POST",
            headers: {"x-requested-with": "fetch"}
        });
    }
}

</script>
</body>
</html>