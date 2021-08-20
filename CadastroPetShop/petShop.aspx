<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="petShop.aspx.cs" Inherits="CadastroPetShop.petShop" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>PetShop</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="Estilo.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="petshop">
            <div>
                <img runat="server" id="imgPet" src="imagem/pet-shop.png"  />
            </div>
            <br />
            <div class="mb-3">
                <asp:TextBox runat="server" ID="txtNome" placeholder="Nome" Class="form-control" />
            </div>
            <div class="mb-3">
                <asp:TextBox runat="server" ID="txtPeso" placeholder="Peso" Class="form-control" />
            </div>
            <div class="mb-3">
                <asp:TextBox runat="server" ID="txtRaça" placeholder="Raça" Class="form-control" />
            </div>
            <div class="mb-3">
                <asp:RadioButton ID="rbMacho" Text="Macho" runat="server" GroupName="sexo" />
                <asp:RadioButton ID="rbFemea" Text="Fêmea" runat="server" GroupName="sexo" />
            </div>            
            <div class="mb-3">
                <asp:Label Text="Data de Nascimento" runat="server" />
                <asp:TextBox runat="server" ID="txtData" TextMode="Date" Class="form-control" />
            </div>
            <div class="mb-3">
                <asp:CheckBox runat="server" ID="cbCadastrado" Text="Pet Cadastrado" />
            </div>
            <div class="mb-3">
                <asp:DropDownList runat="server" ID="ddlPet" Class="form-control" required="true">
                    <asp:ListItem Text="--Selecione o porte do pet" />
                    <asp:ListItem Text="Pequeno" Value="1" />
                    <asp:ListItem Text="Médio" Value="2" />
                    <asp:ListItem Text="Grande" Value="3" />
                </asp:DropDownList>
            </div>
            <div class="mb-3">
                <asp:Button runat="server" ID="btnCadastrar" Class="form-control" Text="Cadastrar" OnClick="btnCadastrar_Click" />
            </div>
        </div>
    </form>
</body>
</html>
