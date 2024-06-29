<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="E-menu.aspx.vb" Inherits="GAMES.E_menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 97%;
            margin-right: 0px;
        }
        .auto-style2 {
            width: 297px;
            text-align: center;
        }
        .auto-style3 {
            width: 462px;
            text-align: center;
        }
        .auto-style4 {
            width: 333px;
            text-align: center;
        }
        .auto-style5 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="font-family: Arial, Helvetica, sans-serif; background-color: #C0C0C0">
        <div style="text-align: justify">
            <br />
            <asp:Image ID="Image1" runat="server" Height="251px" ImageUrl="https://i0.wp.com/pcpress.rs/wp-content/uploads/2018/12/Consoles.jpg?ssl=1" Width="1380px" />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;
            BIENVENIDO A GAMES STORE
            !!!<br />
            <br />
            MENÚ DE OPCIONES:<br />
            <br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">1.-JUEGOS</td>
                    <td class="auto-style3">2.-ESPECIFICACIONES JUEGO</td>
                    <td class="auto-style4">3.-VENTAS</td>
                    <td class="auto-style5">4.-CLIENTES </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="Button16" runat="server" Text="NUEVO JUEGO" Width="250px" BackColor="#CCFFCC" BorderColor="#CCFFCC" />
                    </td>
                    <td class="auto-style3">
                        <asp:Button ID="Button23" runat="server" Text="AGREGAR DESARROLLADOR" Width="300px" BackColor="#CCFFCC" BorderColor="#CCFFCC" />
                    </td>
                    <td class="auto-style4">
                        <asp:Button ID="Button24" runat="server" Text="CALCULAR VENTA" Width="220px" BackColor="#CCFFCC" BorderColor="#CCFFCC" />
                    </td>
                    <td class="auto-style5">
                        <asp:Button ID="Button31" runat="server" Text="NUEVO CLIENTE " Width="250px" BackColor="#CCFFCC" BorderColor="#CCFFCC" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="Button17" runat="server" Text="BUSCAR JUEGO" Width="250px" BackColor="#CCFFCC" BorderColor="#CCFFCC" />
                    </td>
                    <td class="auto-style3">
                        <asp:Button ID="Button22" runat="server" Text="AGREGAR CATEGORIA" Width="300px" BackColor="#CCFFCC" BorderColor="#CCFFCC" />
                    </td>
                    <td class="auto-style4">
                        <asp:Button ID="Button25" runat="server" Text="ELIMINAR VENTA" Width="220px" BackColor="#CCFFCC" BorderColor="#CCFFCC" />
                    </td>
                    <td class="auto-style5">
                        <asp:Button ID="Button30" runat="server" Text="ELIMINAR CLIENTE" Width="250px" BackColor="#CCFFCC" BorderColor="#CCFFCC" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="Button18" runat="server" Text="ACTUALIZAR PRECIO" Width="250px" BackColor="#CCFFCC" BorderColor="#CCFFCC" />
                    </td>
                    <td class="auto-style3">
                        <asp:Button ID="Button21" runat="server" Text="AGREGAR PLATAFORMA" Width="300px" BackColor="#CCFFCC" BorderColor="#CCFFCC" />
                    </td>
                    <td class="auto-style4">
                        <asp:Button ID="Button26" runat="server" Text="VENTAS DEL MES" Width="220px" BackColor="#CCFFCC" BorderColor="#CCFFCC" />
                    </td>
                    <td class="auto-style5">
                        <asp:Button ID="Button29" runat="server" Text="ACTUALIZAR CLIENTE" Width="250px" BackColor="#CCFFCC" BorderColor="#CCFFCC" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="Button19" runat="server" Text="ELIMINAR JUEGO" Width="250px" BackColor="#CCFFCC" BorderColor="#CCFFCC" />
                    </td>
                    <td class="auto-style3">
                        <asp:Button ID="Button20" runat="server" Text="NUEVO DESARROLLADOR" Width="300px" BackColor="#CCFFCC" BorderColor="#CCFFCC" />
                    </td>
                    <td class="auto-style4">
                        <asp:Button ID="Button27" runat="server" Text="GRAFICA" BackColor="#CCFFCC" BorderColor="#CCFFCC" Width="220px" />
                    </td>
                    <td class="auto-style5">
                        &nbsp;</td>
                </tr>
            </table>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <asp:Button ID="Button12" runat="server" BackColor="Red" Text="VOLVER" />
        </div>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
