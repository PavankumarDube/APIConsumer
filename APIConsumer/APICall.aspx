<%@ Page Language="C#" AutoEventWireup="true" CodeFile="APICall.aspx.cs" Inherits="APICall" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
    <script>  
         $(document).ready(function () {  
             $("#Save").click(function () {  
                 var person = new Object();  
                 person.name = $('#name').val();  
                 person.surname = $('#surname').val();  
                var settings = {
  "async": true,
  "crossDomain": true,
  "url": "http://localhost:50410/APi/Cours",
  "method": "POST",
  "headers": {
    "Content-Type": "application/json",
    "User-Agent": "PostmanRuntime/7.11.0",
    "Accept": "*/*",
    "Cache-Control": "no-cache",
    "Postman-Token": "387063e3-416a-4b89-8cbb-9fa34de97605,c73eda3c-cd08-4172-a8fb-30440d07bf5a",
    "Host": "localhost:50410",
    "accept-encoding": "gzip, deflate",
    "content-length": "120",
    "Connection": "keep-alive",
    "cache-control": "no-cache"
  },
  "processData": false,
  "data": "{\r\n  \"CourseId\": 5,\r\n  \"Title\": \"C#\",\r\n  \"Credits\": \"2090\",\r\n  \"EnrolmentDate\": \"10/02/1990\",\r\n  \"VersionNo\": \"QEA=\"\r\n}"
}

$.ajax(settings).done(function (response) {
  console.log(response);
});  
             });  
         });  
    </script>
    <script>
$(document).ready(function(){
  $("button").click(function(){
    $("input").hide();
  });
});
</script>
</head>
<body>
    <form id="form1" runat="server">
        Name :- <input type="text" name="name" id="name" />  
        Surname:- <input type="text" name="surname" id="surname" />  
        <input type="button" id="Save" value="Save Data" />
        <asp:Button ID="Button1" runat="server" Text="Button" />
        <asp:Button ID="Button2" runat="server" Text="Button" />
    </form>
    
</body>
</html>
