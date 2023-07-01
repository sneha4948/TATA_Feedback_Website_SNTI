<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm5.aspx.cs" Inherits="snti.WebForm5" %>

<!DOCTYPE html>
<html class="supernova">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=2.0, user-scalable=1">
    <meta name="HandheldFriendly" content="true">
    <title>Event Feedback Form</title>
    <style type="text/css">
        @media print {
            .form-section {
                display: inline !important
            }

            .form-pagebreak {
                display: none !important
            }

            .form-section-closed {
                height: auto !important
            }

            .page-section {
                position: initial !important
            }
        }
    </style>
    <link type="text/css" rel="stylesheet" href="https://cdn01.jotfor.ms/themes/CSS/5e6b428acc8c4e222d1beb91.css?themeRevisionID=5eb3b4ae85bd2e1e2966db96">
    <link type="text/css" rel="stylesheet" href="https://cdn02.jotfor.ms/css/styles/payment/payment_styles.css?3.3.30884">
    <link type="text/css" rel="stylesheet" href="https://cdn03.jotfor.ms/css/styles/payment/payment_feature.css?3.3.30884">
    <style type="text/css" id="form-designer-style">
        /* Injected CSS Code */

        .supernova {
            background-color: #2462B9;
        }

        body {
            color: #102D80;
            font-size: 16px;
            font-family: Inter;
            background-color: #2462B9;
        }

        .form-all {
            margin-top: 72px;
            background-color: #ffffff;
            box-shadow: 0 4px 4px rgba(17, 24, 38, 0.21)
        }

        .form-line-active {
            background-color: #F1F5FF;
        }

        .form-line-error {
            background-color: #FFEDED;
        }

            .form-line-error input:not(#coupon-input):not(.form-validation-error) {
                border-color: #C3CAD8;
            }

        .form-label {
            color: #102D80;
        }

        .form-sub-label {
            color: #2C63B1;
        }

        .form-dropdown, .form-textarea, .form-textbox, .form-checkbox + label:before, .form-radio + label:before, .form-radio + span:before, .form-checkbox + span:before {
            border-color: #C3CAD8;
            background-color: #ffffff;
            color: #2C3345;
        }

        questionLine-editButton {
            color: #102D80;
        }

        .appointmentCalendarContainer {
            background-color: #ffffff;
        }

        .form-checkbox + label, .form-radio + label {
            color: #102D80;
        }

        .form-dropdown:hover, .form-textarea:hover, .form-textbox:hover, .form-checkbox:hover + label:before, .form-radio:hover + label:before {
            border-color: #2E69FF;
            box-shadow: 0 0 0 2px #C9D8FE;
        }

        .form-dropdown:focus, .form-textarea:focus, .form-textbox:focus, .form-checkbox:focus + label:before, .form-radio:focus + label:before {
            border-color: #2E69FF;
            box-shadow: 0 0 0 3px #C9D8FE;
        }

        .form-matrix-column-headers, .form-matrix-table td, .form-matrix-table td:last-child, .form-matrix-table th, .form-matrix-table th:last-child, .form-matrix-table tr:last-child td, .form-matrix-table tr:last-child th, .form-matrix-table tr:not([role=group]) + tr[role=group] th {
            color: #2C3345;
        }

        .form-radio:checked + label:after {
            background-color: #2E69FF;
        }

        .form-checkbox:checked + label:before {
            background-color: #2E69FF;
            border-color: #2E69FF;
        }

        .form-radio:checked + label:before {
            border-color: #2E69FF;
        }

        .form-header {
            color: #102D80;
        }

        .jSignature, .signature-pad-passive {
            border-color: #C3CAD8;
            background-color: #FFFFFF;
        }

        .form-header-group .form-subHeader {
            color: #2C63B1;
        }

        .form-header-group {
            border-color: #C3CAD8;
        }

        .header-large {
            color: #C3CAD8;
            border-color: #c3cad8;
        }

        li[data-type="control_text"] .form-html {
            color: #7F8DAA;
        }

        li[data-type="control_datetime"] .extended .allowTime-container + .form-sub-label-container {
            background-color: #ffffff;
        }

        .form-buttons-wrapper .form-submit-button:not(.form-sacl-button) {
            background-color: #18BD5B;
            border-color: #C3CAD8;
        }

        .form-buttons-wrapper .form-sacl-button[data-component], form-submit-print {
            color: #2C3345;
        }

        .form-buttons-wrapper .form-pagebreak-next {
            background-color: undefined;
        }

        .form-buttons-wrapper .form-pagebreak-back {
            background-color: #7EA9E6;
        }

        .form-all {
            font-family: Inter, sans-serif;
        }

            .form-all .qq-upload-button,
            .form-all .form-submit-button,
            .form-all .form-submit-reset,
            .form-all .form-submit-print {
                font-family: Inter, sans-serif;
            }

            .form-all .form-pagebreak-back-container,
            .form-all .form-pagebreak-next-container {
                font-family: Inter, sans-serif;
            }

        .form-header-group {
            font-family: Inter, sans-serif;
        }

        .form-label {
            font-family: Inter, sans-serif;
        }

            .form-label.form-label-auto {
                display: block;
                float: none;
                text-align: left;
                width: 100%;
            }

        .form-line {
            margin-top: 12px 36px 12px 36px;
            margin-bottom: 12px 36px 12px 36px;
        }

        .form-all {
            max-width: 752px;
            width: 100%;
        }

        .form-label.form-label-left,
        .form-label.form-label-right,
        .form-label.form-label-left.form-label-auto,
        .form-label.form-label-right.form-label-auto {
            width: 230px;
        }

        .form-all {
            font-size: 16px
        }

            .form-all .qq-upload-button,
            .form-all .qq-upload-button,
            .form-all .form-submit-button,
            .form-all .form-submit-reset,
            .form-all .form-submit-print {
                font-size: 16px
            }

            .form-all .form-pagebreak-back-container,
            .form-all .form-pagebreak-next-container {
                font-size: 16px
            }

        .supernova {
            background-color: #2462B9;
        }

            .supernova body {
                background: transparent;
            }

            .supernova .form-all, .form-all {
                background-color: #ffffff;
                border: 1px solid transparent;
            }

        .form-all {
            color: #102D80;
        }

        .form-label-top,
        .form-label-left,
        .form-label-right,
        .form-html,
        .form-checkbox-item label,
        .form-radio-item label {
            color: #102D80;
        }

        .form-textbox,
        .form-textarea,
        .form-radio-other-input,
        .form-checkbox-other-input,
        .form-captcha input,
        .form-spinner input {
            background-color: #ffffff;
        }

        .form-line-error {
            overflow: hidden;
            transition: none;
            background-color: #FFEDED;
        }

            .form-line-error .form-error-message {
                background-color: #FF3200;
                clear: both;
                float: none;
            }

            .form-line-error .form-error-arrow {
                border-bottom-color: #FF3200;
            }

            .form-line-error input:not(#coupon-input),
            .form-line-error textarea,
            .form-line-error .form-validation-error {
                border: 1px solid #FF3200;
                .box-shadow(0 0 3px #FF3200);
            }

        .supernova {
            background-image: none;
        }

        #stage {
            background-image: none;
        }

        .form-all {
            background-image: none;
        }

        .ie-8 .form-all:before {
            display: none;
        }

        .ie-8 {
            margin-top: auto;
            margin-top: initial;
        }

        .radiobuttonlist1 {
            color: red;
        }

        .radiobuttonlist2 {
            color: #FF3399;
        }

        .radiobuttonlist3 {
            color: magenta;
        }

        .radiobuttonlist4 {
            color: blue;
        }

        .radiobuttonlist5 {
            color: green;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <div role="main" class="form-all">
            <style>
                .form-all:before {
                    background: none;                    
                }
            
                }
            </style>
            <ul class="form-section page-section">
                <li id="cid_1" class="form-input-wide" data-type="control_head">
                    <div class="form-header-group  header-large">
                        <div class="header-text httal htvam">
                            <h1 id="header_1" class="form-header" data-component="header">Trainee Feedback Form
                            </h1>
                            <div id="subHeader_1" class="form-subHeader">
                                &nbsp;Shavak Nanavati Technical Institute (SNTI),the erstwhile "Jamshedpur Technical Institute" (JTI) was established in 1921, with the inspiration of the Founder “Let the Indians learn to do things by themselves”. Today SNTI, an integral part of the Human Resource Division of Tata Steel, has rendered commendable service in nation building through the development of technical manpower, not only for Tata Steel but, for many other Tata organisations, private and public sector Steel Plants and manufacturing industries.
                                </div> <br />
                                <div id="subHeader_2" class="form-subHeader">Please provide us with feedback so that we can enhance our training services!!           
                            </div>
                        </div>
                    </div>
               </li>
                <li class="form-line jf-required" data-type="control_scale" id="id_46">
                    <label class="form-label form-label-top form-label-auto" id="label_46" for="input_23">
                        Overall, how valuable was the training?
         
                        <span class="form-required">*
                        </span>
                    </label>
                  <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" CellPadding="10" CellSpacing="10" RepeatDirection="Horizontal" Font-Names="Comic Sans MS" Font-Size="Large" Height="50px">
                        <asp:ListItem Value="1" class="radiobuttonlist1">Worse</asp:ListItem>
                        <asp:ListItem Value="2" class="radiobuttonlist2">Boring</asp:ListItem>
                        <asp:ListItem Value="3" class="radiobuttonlist3">Satisfactory</asp:ListItem>
                        <asp:ListItem Value="4" class="radiobuttonlist4">good</asp:ListItem>
                        <asp:ListItem Value="5" class="radiobuttonlist5">Fantastic</asp:ListItem>
                    </asp:RadioButtonList>
                </li>
                <li class="form-line jf-required" data-type="control_scale" id="id_231">
                    <label class="form-label form-label-top form-label-auto" id="label_231" for="input_231">
                        Instructor was clear and approachable?
                        <span class="form-required">*
                        </span>
                    </label>

                    <asp:RadioButtonList ID="RadioButtonList2" runat="server" AutoPostBack="True" CellPadding="10" CellSpacing="10" RepeatDirection="Horizontal" Font-Names="Comic Sans MS" Font-Size="Large" Height="50px">
                        <asp:ListItem Value="1" class="radiobuttonlist1">Worse</asp:ListItem>
                        <asp:ListItem Value="2" class="radiobuttonlist2">Boring</asp:ListItem>
                        <asp:ListItem Value="3" class="radiobuttonlist3">Satisfactory</asp:ListItem>
                        <asp:ListItem Value="4" class="radiobuttonlist4">good</asp:ListItem>
                        <asp:ListItem Value="5" class="radiobuttonlist5">Fantastic</asp:ListItem>
                    </asp:RadioButtonList>

                </li>
                <li class="form-line jf-required" data-type="control_scale" id="id_25">
                    <label class="form-label form-label-top form-label-auto" id="label_25" for="input_25">
                        After the training, how inspired,experienced did you feel?
         
                        <span class="form-required">*
                        </span>
                    </label>
                   <asp:RadioButtonList ID="RadioButtonList3" runat="server" AutoPostBack="True" CellPadding="10" CellSpacing="10" RepeatDirection="Horizontal" Font-Names="Comic Sans MS" Font-Size="Large" Height="50px">
                        <asp:ListItem Value="1" class="radiobuttonlist1">Worse</asp:ListItem>
                        <asp:ListItem Value="2" class="radiobuttonlist2">Boring</asp:ListItem>
                        <asp:ListItem Value="3" class="radiobuttonlist3">Satisfactory</asp:ListItem>
                        <asp:ListItem Value="4" class="radiobuttonlist4">good</asp:ListItem>
                        <asp:ListItem Value="5" class="radiobuttonlist5">Fantastic</asp:ListItem>
                    </asp:RadioButtonList>
                </li>
                <li class="form-line jf-required" data-type="control_scale" id="id_24">
                    <label class="form-label form-label-top form-label-auto" id="label_24" for="input_24">
                        Do you feel the training provided value for money/time?
         
                        <span class="form-required">*
                        </span>
                    </label>
                    <asp:RadioButtonList ID="RadioButtonList4" runat="server" AutoPostBack="True" CellPadding="10" CellSpacing="10" RepeatDirection="Horizontal" Font-Names="Comic Sans MS" Font-Size="Large" Height="50px">
                        <asp:ListItem Value="1" class="radiobuttonlist1">Worse</asp:ListItem>
                        <asp:ListItem Value="2" class="radiobuttonlist2">Boring</asp:ListItem>
                        <asp:ListItem Value="3" class="radiobuttonlist3">Satisfactory</asp:ListItem>
                        <asp:ListItem Value="4" class="radiobuttonlist4">good</asp:ListItem>
                        <asp:ListItem Value="5" class="radiobuttonlist5">Fantastic</asp:ListItem>
                    </asp:RadioButtonList>
                </li>

                <li id="cid_27" class="form-input-wide" data-type="control_head">
                    <div class="form-header-group  header-default">
                        <div class="header-text httal htvam">
                            <h2 id="header_27" class="form-header" data-component="header">Final Thoughts?
                            </h2>
                        </div>
                    </div>
                </li>
                <li class="form-line" data-type="control_textarea" id="id_45">
                    <label class="form-label form-label-top form-label-auto" id="label_45" for="input_45">REMARKS / SUGGESTIONS</label>
                    <div id="cid_45" class="form-input-wide" data-layout="full">
                        <asp:TextBox ID="TextBox1" runat="server" Height="124px" Width="667px"></asp:TextBox>                        
                    </div>
                </li>

                <li id="cid_28" class="form-input-wide" data-type="control_head">
                    <div align="center">
                        <asp:Button ID="Button1" runat="server" Text="Submit" Text-align="center" CssClass="btn btn-primary" OnClick="Button1_Click" BackColor="#66FFCC" Height="40px" Width="80px" />
                    </div>
                    <div>
                    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-link" OnClick="LinkButton1_Click">Go back to Home Page</asp:LinkButton>
                    <br />
                    <br />
                </div>
                    <div class="form-header-group  header-default">
                        <div class="header-text httal htvam">
                        </div>
                    </div>
                </li>
            </ul>
            <br />
        </div>
    </form>
    <span style="margin: 0px auto; border: 2px dotted rgb(0, 0, 0); position: absolute; z-index: 2147483647; visibility: hidden; left: 1061px; width: 0px; top: 151px; height: 0px;"></span><span style="z-index: 2147483647; position: absolute; visibility: hidden; left: 1046px; width: 50px; top: 136px; height: 20px; font-size: 10px; color: black;"></span>
</body>
</html>
