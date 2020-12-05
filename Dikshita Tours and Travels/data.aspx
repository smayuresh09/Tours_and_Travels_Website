<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="data.aspx.cs" Inherits="Dikshita_Tours_and_Travels.data" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="content">
    <div id="userentry">
        <asp:Label ID="Label1" runat="server" Text="ENQUIRIES FROM CUSTOMERS" Font-Size="Large" Font-Bold="True" Width="600px" Font-Underline="True"></asp:Label><br /><br />
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" 
            AutoGenerateColumns="False" CellPadding="4" DataKeyNames="CONTACT" 
            BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
            Width="954px">
            <Columns>
                <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" />
                <asp:BoundField DataField="CONTACT" HeaderText="CONTACT" 
                    SortExpression="CONTACT" ReadOnly="True" />
                <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" 
                    SortExpression="EMAIL" />
                <asp:BoundField DataField="LOCATION" HeaderText="LOCATION" 
                    SortExpression="LOCATION" />
                <asp:BoundField DataField="DAY" HeaderText="DAY" SortExpression="DAY" />
                <asp:BoundField DataField="NIGHT" HeaderText="NIGHT" SortExpression="NIGHT" />
                <asp:BoundField DataField="PEOPLE" HeaderText="PEOPLE" 
                    SortExpression="PEOPLE" />
            </Columns>
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#330099" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <SortedAscendingCellStyle BackColor="#FEFCEB" />
            <SortedAscendingHeaderStyle BackColor="#AF0101" />
            <SortedDescendingCellStyle BackColor="#F6F0C0" />
            <SortedDescendingHeaderStyle BackColor="#7E0000" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:DIKSHITAConnectionString %>" 
            SelectCommand="SELECT * FROM [customers]" 
            DeleteCommand="DELETE FROM [customers] WHERE [CONTACT] = @CONTACT" 
            InsertCommand="INSERT INTO [customers] ([NAME], [CONTACT], [EMAIL], [LOCATION], [DAY], [NIGHT], [PEOPLE]) VALUES (@NAME, @CONTACT, @EMAIL, @LOCATION, @DAY, @NIGHT, @PEOPLE)" 
            UpdateCommand="UPDATE [customers] SET [NAME] = @NAME, [EMAIL] = @EMAIL, [LOCATION] = @LOCATION, [DAY] = @DAY, [NIGHT] = @NIGHT, [PEOPLE] = @PEOPLE WHERE [CONTACT] = @CONTACT">
            <DeleteParameters>
                <asp:Parameter Name="CONTACT" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="NAME" Type="String" />
                <asp:Parameter Name="CONTACT" Type="String" />
                <asp:Parameter Name="EMAIL" Type="String" />
                <asp:Parameter Name="LOCATION" Type="String" />
                <asp:Parameter Name="DAY" Type="Int32" />
                <asp:Parameter Name="NIGHT" Type="Int32" />
                <asp:Parameter Name="PEOPLE" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="NAME" Type="String" />
                <asp:Parameter Name="EMAIL" Type="String" />
                <asp:Parameter Name="LOCATION" Type="String" />
                <asp:Parameter Name="DAY" Type="Int32" />
                <asp:Parameter Name="NIGHT" Type="Int32" />
                <asp:Parameter Name="PEOPLE" Type="Int32" />
                <asp:Parameter Name="CONTACT" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    </div>
</asp:Content>
