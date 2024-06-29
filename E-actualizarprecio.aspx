﻿<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="E-actualizarprecio.aspx.vb" Inherits="GAMES.E_actualizarprecio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server" style="font-family: Arial, Helvetica, sans-serif; background-color: #C0C0C0">
        <div>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            ACTUALIZAR PRECIO JUEGO:<br />
            <br />
            NOMBRE:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            NUEVO PRECIO: <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Button ID="Button17" runat="server" Text="ACTUALIZAR" BackColor="#CCFFCC" BorderColor="#CCFFCC" />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="IdJuego" DataSourceID="SqlDataSourceActualizarPrecio" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="IdJuego" HeaderText="IdJuego" InsertVisible="False" ReadOnly="True" SortExpression="IdJuego" />
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                    <asp:BoundField DataField="Precio" HeaderText="Precio" SortExpression="Precio" />
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSourceActualizarPrecio" runat="server" ConnectionString="<%$ ConnectionStrings:GAMESConnectionString %>" SelectCommand="ActualizarPrecio" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="Nombre" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="TextBox2" Name="Precio" PropertyName="Text" Type="Decimal" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:Button ID="Button18" runat="server" BackColor="Red" Text="VOLVER" />
            <br />
        </div>
    </form>
</body>
</html>
