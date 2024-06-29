<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="C-menu.aspx.vb" Inherits="GAMES.C_menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 96%;
        }
        .auto-style3 {
            width: 324px;
            text-align: left;
        }
        .auto-style6 {
            margin-top: 0px;
        }
        .auto-style7 {
            height: 26px;
            width: 324px;
            text-align: left;
        }
        .auto-style8 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="background-color: #C0C0C0; font-family: Arial, Helvetica, sans-serif">
        <div>
            <br />
            <asp:Image ID="Image1" runat="server" Height="283px" Width="1403px" CssClass="auto-style6" ImageUrl="https://i0.wp.com/pcpress.rs/wp-content/uploads/2018/12/Consoles.jpg?ssl=1" />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;
            BIENVENIDO A GAMES STORE!!!<br />
            <br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">CATALOGO DE JUEGOS</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="VER" Width="101px" BackColor="#CCFFCC" BorderColor="#CCFFCC" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;POR PLATAFORMA</td>
                    <td>
                        <asp:Button ID="Button2" runat="server" Text="BUSCAR" BackColor="#CCFFCC" BorderColor="#CCFFCC" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;POR CATEGORIA </td>
                    <td>
                        <asp:Button ID="Button3" runat="server" Text="BUSCAR" BackColor="#CCFFCC" BorderColor="#CCFFCC" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">POR DESARROLLADOR </td>
                    <td class="auto-style8">
                        <asp:Button ID="Button4" runat="server" Text="BUSCAR" BackColor="#CCFFCC" BorderColor="#CCFFCC" />
                    </td>
                </tr>
                </table>
        </div>
        <br />
        <asp:Button ID="Button5" runat="server" BackColor="Red" BorderColor="Red" Text="VOLVER" />
    </form>
</body>
</html>
