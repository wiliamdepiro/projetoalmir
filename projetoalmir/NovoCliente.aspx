<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="NovoCliente.aspx.cs" Inherits="NovoCliente" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="id" DataSourceID="SqlDataSource1" Height="50px" Width="125px" CellSpacing="2">
    <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
    <Fields>
        <asp:TemplateField ShowHeader="False">
            <InsertItemTemplate>
                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert"></asp:LinkButton>
                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
            </InsertItemTemplate>
            <ItemTemplate>
                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="New" Text="New"></asp:LinkButton>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
        <asp:BoundField DataField="nome" HeaderText="Nome" SortExpression="nome" />
        <asp:BoundField DataField="numero" HeaderText="Numero" SortExpression="numero" />
        <asp:BoundField DataField="cargo" HeaderText="Cargo" SortExpression="cargo" />
        <asp:BoundField DataField="Empresa_id" HeaderText="ID da Empresa" SortExpression="Empresa_id" />
    </Fields>
    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
</asp:DetailsView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LISTATELConnectionString %>" DeleteCommand="DELETE FROM [Pessoa] WHERE [id] = @id" InsertCommand="INSERT INTO [Pessoa] ([nome], [numero], [cargo], [Empresa_id]) VALUES (@nome, @numero, @cargo, @Empresa_id)" SelectCommand="SELECT * FROM [Pessoa]" UpdateCommand="UPDATE [Pessoa] SET [nome] = @nome, [numero] = @numero, [cargo] = @cargo, [Empresa_id] = @Empresa_id WHERE [id] = @id">
    <DeleteParameters>
        <asp:Parameter Name="id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="nome" Type="String" />
        <asp:Parameter Name="numero" Type="String" />
        <asp:Parameter Name="cargo" Type="String" />
        <asp:Parameter Name="Empresa_id" Type="Int32" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="nome" Type="String" />
        <asp:Parameter Name="numero" Type="String" />
        <asp:Parameter Name="cargo" Type="String" />
        <asp:Parameter Name="Empresa_id" Type="Int32" />
        <asp:Parameter Name="id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>

