<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="snti.WebForm4" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" />
    <style>
        body {
            background: linear-gradient(to right, #ffafbd 0%, #ffc3a0 100%);
        }

        .headDetails {
            height: 38px;
            width: 250px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <br />
        <br />
        <br />

        <div align="center" class="container jumbotron bg-light boxshadow" style="width: 60%">
            <form>
                <br />
                <br />
                <div class="card-header-pills bg-dark text-white">
                    <h2>Edit Trainee Details</h2>
                </div>
                <div class="form-group" style="width: 80%">

                    <div class="input-group mb-2">
                        <div class="input-group-prepend">
                            <div class="input-group-text headDetails">Reference Number</div>
                        </div>
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" ReadOnly="True"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group" style="width: 80%">
                    <div class="input-group mb-2">
                        <div class="input-group-prepend">
                            <div class="input-group-text headDetails">Trainee Name</div>
                        </div>
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group" style="width: 80%">
                    <div class="input-group mb-2">
                        <div class="input-group-prepend">
                            <div class="input-group-text headDetails">Discipline</div>
                        </div>
                        <asp:DropDownList ID="DropDownList1" runat="server" Width="520px">
                            <asp:ListItem>Select Discipline</asp:ListItem>
                            <asp:ListItem>B.Tech</asp:ListItem>
                            <asp:ListItem>M.Tech</asp:ListItem>
                            <asp:ListItem>Dual Degree</asp:ListItem>
                            <asp:ListItem>B.Sc</asp:ListItem>
                            <asp:ListItem>M.Sc</asp:ListItem>
                            <asp:ListItem>Doctoral Degree</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="form-group" style="width: 80%">
                    <div class="input-group mb-2">
                        <div class="input-group-prepend">
                            <div class="input-group-text headDetails">Branch</div>
                        </div>
                        <asp:DropDownList ID="DropDownList2" runat="server" Width="520px">
                            <asp:ListItem>Select Branch</asp:ListItem>
                            <asp:ListItem>Computer Science &amp; Engineering</asp:ListItem>
                            <asp:ListItem>Information Technology</asp:ListItem>
                            <asp:ListItem>Electrical Engineering</asp:ListItem>
                            <asp:ListItem>Industrial and Systems Engineering</asp:ListItem>
                            <asp:ListItem>Mathematics &amp; Computing</asp:ListItem>
                            <asp:ListItem>Mechanical Engineering</asp:ListItem>
                            <asp:ListItem>Chemical Engineering</asp:ListItem>
                            <asp:ListItem>Mining</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="form-group" style="width: 80%">
                    <div class="input-group mb-2">
                        <div class="input-group-prepend">
                            <div class="input-group-text headDetails">College Name</div>
                        </div>
                        <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group" style="width: 80%">
                    <div class="input-group mb-2">
                        <div class="input-group-prepend">
                            <div class="input-group-text headDetails">Mobile Number</div>
                        </div>
                        <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group" style="width: 80%">
                    <div class="input-group mb-2">
                        <div class="input-group-prepend">
                            <div class="input-group-text headDetails">Email Id</div>
                        </div>
                        <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group" style="width: 80%">
                    <div class="input-group mb-2">
                        <div class="input-group-prepend">
                            <div class="input-group-text headDetails">Guide Personal No.</div>
                        </div>
                        <asp:TextBox ID="TextBox8" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group" style="width: 80%">
                    <div class="input-group mb-2">
                        <div class="input-group-prepend">
                            <div class="input-group-text headDetails">Guide Name</div>
                        </div>
                        <asp:TextBox ID="TextBox9" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group" style="width: 80%">
                    <div class="input-group mb-2">
                        <div class="input-group-prepend">
                            <div class="input-group-text headDetails">Project Title</div>
                        </div>
                        <asp:TextBox ID="TextBox10" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <br />
                <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="Button1_Click" />
                <div>
                    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-link" OnClick="LinkButton1_Click">Go back to Home Page</asp:LinkButton>
                    <br />
                    <br />
                </div>
            </form>
        </div>
    </form>
    <br />
    <br />
    <br />
    <br />
</body>
</html>
