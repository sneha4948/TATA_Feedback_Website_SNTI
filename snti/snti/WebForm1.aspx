<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="snti.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" />
    <style>
        .boxshadow {
            -webkit-box-shadow: -1px 4px 26px 11px rgba(0,0,0,0.75);
            -moz-box-shadow: -1px 4px 26px 11px rgba(0,0,0,0.75);
            box-shadow: -1px 4px 26px 11px rgba(0,0,0,0.75);
            margin-top: 50px
        }

        body {
            background: linear-gradient(to right, #43cea2 0%, #185a9d 100%);
            background-image:url("pictures/tata-steel-logo-jubilee-park-silhouette-background-copy-space-220691299.jpg");
            background-repeat: no-repeat; /* Do not repeat the image */
            background-size: cover;
        }

        .auto-style2 {
            width: 25px;
            height: 25px;
            margin-left: 0px;
            margin-top: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <br />
        <br />
        <br />
        <div align="center" class="container jumbotron bg-light boxshadow" style="width: 35%">
            <form>
                <br />
                <br />
                
                <div class="card-header-pills bg-dark text-white">
                    <h2>Login Page</h2>
                </div>
                <div class="form-group" style="width: 80%">
                    <label class="text-dark" for="userLabel">User-Id</label>
                    <div class="input-group mb-2">
                        <div class="input-group-prepend">
                            <div class="input-group-text">@</div>
                        </div>
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group" style="width: 80%">
                    <label class="text-dark" for="passwordLabel">Password</label>
                    <div class="input-group mb-2">
                        <div class="input-group-prepend">
                            <div class="input-group-text" style="height: 38px; width: 41.29px;">
                                <table class="main_table">
                                    <tr>
                                        <td class="image_centering_class" colspan="2" aria-dropeffect="none">
                                            <img alt="" class="auto-style2" src="pictures/password.png" /><br />
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                    </div>
                </div>
                <br />
                <asp:Button ID="Button1" runat="server" Text="Login" CssClass="btn btn-primary" OnClick="Button1_Click" />
                <div>
                    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-link" OnClick="LinkButton1_Click">New User! Click here to register</asp:LinkButton>
                    <br />
                    <br />
                </div>


            </form>
        </div>
    </form>
</body>
</html>
