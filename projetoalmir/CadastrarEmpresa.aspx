<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CadastrarEmpresa.aspx.cs" Inherits="CadastrarEmpresa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:TemplateField ShowHeader="False">
            <ItemTemplate>
                <asp:Button ID="Button1" runat="server" CausesValidation="False" CommandName="Select" Text="Select" />
            </ItemTemplate>
        </asp:TemplateField>
        <asp:BoundField DataField="id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="id" />
        <asp:BoundField DataField="nome" HeaderText="Nome" SortExpression="nome" />
        <asp:BoundField DataField="numero" HeaderText="Numero" SortExpression="numero" />
        <asp:BoundField DataField="endereco" HeaderText="Endereco" SortExpression="endereco" />
        <asp:BoundField DataField="cidade" HeaderText="Cidade" SortExpression="cidade" />
        <asp:BoundField DataField="estado" HeaderText="Estado" SortExpression="estado" />
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
<br />
<asp:DetailsView ID="DetailsView1" runat="server" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" Height="50px" OnItemDeleted="DetailsView1_ItemDeleted" Width="125px" AutoGenerateRows="False" DataKeyNames="id" DataSourceID="SqlDataSource2" OnItemInserted="DetailsView1_ItemInserted2" OnItemUpdated="DetailsView1_ItemUpdated2">
    <EditRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
    <Fields>
        <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
        <asp:BoundField DataField="nome" HeaderText="nome" SortExpression="nome" />
        <asp:BoundField DataField="numero" HeaderText="numero" SortExpression="numero" />
        <asp:BoundField DataField="endereco" HeaderText="endereco" SortExpression="endereco" />
        <asp:BoundField DataField="cidade" HeaderText="cidade" SortExpression="cidade" />
        <asp:BoundField DataField="estado" HeaderText="estado" SortExpression="estado" />
        <asp:TemplateField ShowHeader="False">
            <EditItemTemplate>
                <asp:Button ID="Button1" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:Button ID="Button2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                <asp:Button ID="Button1" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:Button ID="Button2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                <asp:Button ID="Button1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:Button ID="Button2" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                &nbsp;<asp:Button ID="Button3" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            </ItemTemplate>
        </asp:TemplateField>
    </Fields>
    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
    <RowStyle BackColor="White" ForeColor="#330099" />
</asp:DetailsView>
<br />
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LISTATELConnectionString %>" SelectCommand="SELECT * FROM [Empresa]"></asp:SqlDataSource>
<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:LISTATELConnectionString %>" DeleteCommand="DELETE FROM [Empresa] WHERE [id] = @id" InsertCommand="INSERT INTO [Empresa] ([nome], [numero], [endereco], [cidade], [estado]) VALUES (@nome, @numero, @endereco, @cidade, @estado)" SelectCommand="SELECT * FROM [Empresa] WHERE ([id] = @id)" UpdateCommand="UPDATE [Empresa] SET [nome] = @nome, [numero] = @numero, [endereco] = @endereco, [cidade] = @cidade, [estado] = @estado WHERE [id] = @id">
    <DeleteParameters>
        <asp:Parameter Name="id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="nome" Type="String" />
        <asp:Parameter Name="numero" Type="String" />
        <asp:Parameter Name="endereco" Type="String" />
        <asp:Parameter Name="cidade" Type="String" />
        <asp:Parameter Name="estado" Type="String" />
    </InsertParameters>
    <SelectParameters>
        <asp:ControlParameter ControlID="GridView1" Name="id" PropertyName="SelectedValue" Type="Int32" />
    </SelectParameters>
    <UpdateParameters>
        <asp:Parameter Name="nome" Type="String" />
        <asp:Parameter Name="numero" Type="String" />
        <asp:Parameter Name="endereco" Type="String" />
        <asp:Parameter Name="cidade" Type="String" />
        <asp:Parameter Name="estado" Type="String" />
        <asp:Parameter Name="id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>

