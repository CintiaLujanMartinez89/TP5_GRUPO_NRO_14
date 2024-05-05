<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarSucursal.aspx.cs" Inherits="TP_GRUPO_NRO_14.AgregarSucursal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 23px;
            width: 353px;
            margin-left: 40px;
        }
        .auto-style4 {
            height: 23px;
            width: 324px;
        }
        .auto-style5 {
            height: 23px;
            width: 361px;
        }
        .auto-style6 {
            width: 304px;
        }
        .auto-style7 {
            width: 304px;
            height: 30px;
        }
        .auto-style8 {
            height: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:HyperLink ID="hlAgregarSucursal" runat="server" NavigateUrl="~/AgregarSucursal.aspx">Agregar sucursal</asp:HyperLink>
                </td>
                <td class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:HyperLink ID="hlListSucursales" runat="server" NavigateUrl="~/ListarSucursal.aspx">Listado de sucursales</asp:HyperLink>
                </td>
                <td class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:HyperLink ID="hlElimSucursal" runat="server" NavigateUrl="~/EliminarSucursal.aspx">Eliminar sucursal</asp:HyperLink>
                </td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Larger" Text="GRUPO N° 14"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Medium" Text="Agregar Sucural:"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="lblNomSuc" runat="server" Text="Nombre de Sucursal:"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtbNomSucur" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvNomSuc" runat="server" ControlToValidate="txtbNomSucur" ErrorMessage="RequiredFieldValidator">Debe ingresar un Nombre de Sucursal</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="lblDescripcion" runat="server" Text="Descripción:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtbDescrip" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvDescrip" runat="server" ControlToValidate="txtbDescrip" ErrorMessage="RequiredFieldValidator">Debe ingresar una Descrpción</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="lblProvincia" runat="server" Text="Provincia:"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlProvincia" runat="server" Width="127px">
                        <asp:ListItem>---Seleccionar---</asp:ListItem>
                       
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rfvProvincias" runat="server" ControlToValidate="ddlProvincia" InitialValue="---Seleccionar---">Debe seleccionar una Provincia</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="lblDirecc" runat="server" Text="Dirección:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtbDirecci" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvDirecc" runat="server" ControlToValidate="txtbDirecci" ErrorMessage="RequiredFieldValidator">Debe ingresar una Dirección</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td>
                    <asp:Button ID="btnAceptar" runat="server" OnClick="btnAceptar_Click" Text="Aceptar" />
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td>
                    <asp:Label ID="lblExito" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td>
                    <asp:Label ID="lblFallo" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    </form>
    </body>
</html>
