<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Main.aspx.vb" Inherits="Rage_Assesment.Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
            <form id="form1" runat="server">  
            <div>  
                <asp:DataGrid ID="Grid" runat="server" PageSize="50" AllowPaging="True" DataKeyField="sku_number" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" 
                    >  
                    <Columns>  
                        <asp:BoundColumn HeaderText="Sku Number" DataField="sku_number"> </asp:BoundColumn>  
                        <asp:BoundColumn HeaderText="Description" DataField="description"> </asp:BoundColumn>  
                        <asp:BoundColumn HeaderText="Cat 1" DataField="category_1"> </asp:BoundColumn>  
                        <asp:BoundColumn HeaderText="Cat 2" DataField="category_2"> </asp:BoundColumn>  
                        <asp:BoundColumn HeaderText="Cat 3" DataField="category_3"> </asp:BoundColumn>  
                        <asp:BoundColumn HeaderText="Created" DataField="created"> </asp:BoundColumn>  
                        <asp:BoundColumn HeaderText="Updated" DataField="updated"> </asp:BoundColumn>  
                    </Columns>  
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />  
                    <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />  
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" Mode="NumericPages" />  
                    <AlternatingItemStyle BackColor="White" />  
                    <ItemStyle BackColor="LightGray" ForeColor="#333333" />  
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" /> </asp:DataGrid> <br /> <br />  
</div>  
        </form>  
</body>
</html>
