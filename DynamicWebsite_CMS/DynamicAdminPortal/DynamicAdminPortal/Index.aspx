<%@ Page Title="" Language="C#" MasterPageFile="~/LayoutMaster.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="DynamicAdminPortal.Index" ValidateRequest="false" %>

<%@ Register Assembly="FreeTextBox" Namespace="FreeTextBoxControls" TagPrefix="FTB" %>  

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        span.ui-icon.ui-icon-clear-content {
            background-image: url('http://igniteui.com/igniteui/css/themes/infragistics/images/ui-icons_888888_256x240.png')!important;
            background-position: -177px -97px;
        }

        /* Override sample's browser styles */
    	#htmlEditor h1, #htmlEditor h2, #htmlEditor h3, #htmlEditor h4, #htmlEditor h5, #htmlEditor h6 { margin: 0px; }
    	#htmlEditor h1 { font-size: 1.9em; }
		#sampleContainer { overflow: visible; }


* {
    box-sizing: border-box;
}

input[type=text], select, textarea {
    width: 69%;
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 4px;
    resize: vertical;
}

label {
    padding: 12px 12px 12px 0;
    display: inline-block;
}

input[type=submit] {
    background-color: #4CAF50;
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    float: right;
}

input[type=submit]:hover {
    background-color: #45a049;
}

.container {
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 20px;
}

.col-25 {
    float: left;
    width: 25%;
    margin-top: 6px;
}

.col-75 {
    float: left;
    width: 75%;
    margin-top: 6px;
}

/* Clear floats after the columns */
.row:after {
    content: "";
    display: table;
    clear: both;
}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
    .col-25, .col-75, input[type=submit] {
        width: 100%;
        margin-top: 0;
    }
}


span.ui-icon.ui-icon-clear-content {
    background-image: url('../../igniteui/css/themes/infragistics/images/ui-icons_888888_256x240.png')!important;
    background-position: -177px -97px;
}

</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="content">
     <h2>Create and Modify Content</h2>
<div class="container">
    <div class="row">
      <div class="col-25">
       <%--   <asp:Label ID="lblFirstName" runat="server" Text="First Name"></asp:Label>--%>
        <label for="fname" style="color:black">Heading</label>
      </div>
      <div class="col-75">
          <asp:TextBox ID="lblHeading" runat="server" placeholder="Heading" ></asp:TextBox>
      <%--  <input type="text" id="fname" name="firstname" placeholder="Your name..">--%>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="lname" style="color:black">Description</label>
      </div>
      <div class="col-75">
        <div>  
                <table>  
                    <tr>  
                        <td>  
                            <FTB:FreeTextBox ID="Richtextbox" runat="server">  
                            </FTB:FreeTextBox>  
                        </td>  
                        <td valign="top">  
                            <asp:GridView runat="server" ID="gvdetails" AutoGenerateColumns="false">  
                                <Columns>  
                                    <asp:TemplateField HeaderText="RichtextBoxData">  
                                        <ItemTemplate>  
                                            <asp:Label ID="lbltxt" runat="server" Text='<%#Bind("RichtextData") %>' />  
                                        </ItemTemplate>  
                                    </asp:TemplateField>  
                                </Columns>  
                            </asp:GridView>  
                        </td>  
                    </tr>  
                </table>  
            </div>
      </div>
    </div>

    <div class="row">
      <div class="col-25">
        <label for="fname" style="color:black"></label>
      </div>
      <div class="col-60">
          <asp:Button ID="btnSubmit" runat="server" Text="Submit" style="float:left" OnClick="btnSubmit_Click"></asp:Button>&nbsp;&nbsp;
           <asp:Button ID="btnCancel" runat="server" Text="Cancel" style="float:left;margin-left:1%"></asp:Button>
      </div>
    </div>
</div>
</div>
</asp:Content>
