<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="QualiOne.Login" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Default Page</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#<%=AjaxPost.ClientID%>").on('click', function (e) {
                e.preventDefault();

                var data = {};

                $.ajax({
                    type: "POST",
                    contentType: "application/json",
                    url: "Login.aspx/redirection",
                    data: JSON.stringify(data),
                })
                    .done(function (data) {
                        console.log(data);
                        window.location = data.d;
                    })
                    .fail(function (jqXHR, textStatus, c) {
                        console.log("failure");
                        console.log(textStatus);
                    });
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="AjaxPost" runat="server" Text="AJAX" />
        </div>
    </form>
</body>
</html>