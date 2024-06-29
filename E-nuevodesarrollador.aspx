<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="E-nuevodesarrollador.aspx.vb" Inherits="GAMES.E_nuevodesarrollador" %>

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
            NUEVO DESARROLLADOR:
            <br />
            <br />
            NOMBRE:
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="GUARDAR" BackColor="#CCFFCC" BorderColor="#CCFFCC" />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="IdDesarrollador" DataSourceID="SqlDataSourceNuevoDesarrollador" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="IdDesarrollador" HeaderText="IdDesarrollador" InsertVisible="False" ReadOnly="True" SortExpression="IdDesarrollador" />
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
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
            <asp:SqlDataSource ID="SqlDataSourceNuevoDesarrollador" runat="server" ConnectionString="<%$ ConnectionStrings:GAMESConnectionString %>" SelectCommand="AgregarDesarrollador" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox2" Name="Nombre" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
        <p>
            <asp:Button ID="Button2" runat="server" BackColor="Red" Text="VOLVER" />
        </p>
    </form>
</body>
</html>
