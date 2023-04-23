<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="pocetna.aspx.cs" Inherits="B8KnjigaUtisaka.pocetna" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">

    <link href="page.css" rel="stylesheet" />
    <!--u page.css je css samo specifican za ovu stranicu, ostali css je u Content/Site.css-->
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" runat="server" Text="IME:" CssClass="labele"></asp:Label> &emsp;&emsp;&emsp;&emsp;&emsp; &nbsp; &nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="Obavezan unos imena">*</asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="EMAIL:" CssClass="labele"></asp:Label> &emsp; &emsp;&emsp;&emsp; &nbsp;<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>

    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="Obavezan unos email-a">*</asp:RequiredFieldValidator>

    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="Neispravan format email-a" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
    <br />
    <br />


    <div id="komentar">

        <asp:Label ID="Label3" runat="server" Text="KOMENTAR:" CssClass="labele"></asp:Label>
        
        &emsp; &nbsp; &nbsp; &nbsp;

    <asp:TextBox ID="TextBox3" runat="server" Rows="6" TextMode="MultiLine" Width="202px"></asp:TextBox>


    </div>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="Obavezan unos komentara" ForeColor="Red">*</asp:RequiredFieldValidator>
    <br />
    <br />
    &emsp;&emsp;&emsp;&emsp;&emsp; &emsp; &emsp; &nbsp;
    <asp:Button ID="Button1" runat="server" CssClass="auto-style1" OnClick="Button1_Click" Text="Dodaj komentar" Width="202px" />

    <asp:Label ID="Label4" runat="server"></asp:Label>
 
</asp:Content>
