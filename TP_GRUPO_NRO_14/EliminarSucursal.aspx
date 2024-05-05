<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EliminarSucursal.aspx.cs" Inherits="TP_GRUPO_NRO_14.EliminarSucursal" %>

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
        .auto-style5 {
            height: 23px;
            width: 361px;
        }
        .auto-style4 {
            height: 23px;
            width: 324px;
        }
        .auto-style7 {
            width: 138px;
        }
        .auto-style8 {
            width: 188px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:HyperLink ID="hlAgregarSucursal" runat="server" NavigateUrl="~/AgregarSucursal.aspx">Agregar sucursal</asp:HyperLink>
                    </td>
                    <td class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:HyperLink ID="hlListSucursales" runat="server" NavigateUrl="~/ListarSucursal.aspx">Listado de sucursales</asp:HyperLink>
                    </td>
                    <td class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:HyperLink ID="hlElimSucursal" runat="server" NavigateUrl="~/EliminarSucursal.aspx">Eliminar sucursal</asp:HyperLink>
                    </td>
                </tr>
            </table>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="lblEliminar" runat="server" Font-Bold="True" Font-Size="Large" Text="Eliminar Sucursal"></asp:Label>
                </td>
                <td class="auto-style8">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="Label2" runat="server" Text="Ingrese Id Sucursal:"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtbIdSuc" runat="server" TextMode="Number" ValidationGroup="grupo1" Width="156px"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" ValidationGroup="grupo1" OnClick="btnEliminar_Click" />
                </td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:RequiredFieldValidator ID="rfvIdSuc" runat="server" ControlToValidate="txtbIdSuc" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ValidationGroup="grupo1">Debe Ingresar un numero de ID Sucursal</asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblExito" runat="server" ForeColor="#FF3300"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
