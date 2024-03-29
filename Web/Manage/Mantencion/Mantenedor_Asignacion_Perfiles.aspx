﻿<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Mantenedor_Asignacion_Perfiles.aspx.vb" Inherits="Web.Mantenedor_Asignacion_Perfiles" %>

<%@ Register assembly="DevExpress.Web.v14.2, Version=14.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1
        {
            width: 201px;
        }
        .auto-style2
        {
            width: 235px;
        }
        .auto-style3
        {
            width: 274px;
        }
        .auto-style4
        {
            width: 191px;
        }
        .auto-style5
        {
            width: 40%;
            height: 19px;
        }
        .auto-style6
        {
            width: 20%;
            height: 19px;
        }
        .auto-style8
        {
            width: 155px;
        }
        .auto-style9 {
            width: 100px;
        }
        </style>
   <script type="text/javascript">
       // <![CDATA[



       function AddSelectedItems() {
           MoveSelectedItems(lbAvailable, lbChoosen);
           UpdateButtonState();
       }
       function AddAllItems() {
           MoveAllItems(lbAvailable, lbChoosen);
           UpdateButtonState();
       }
       function RemoveSelectedItems() {
           MoveSelectedItems(lbChoosen, lbAvailable);
           UpdateButtonState();
       }
       function RemoveAllItems() {
           MoveAllItems(lbChoosen, lbAvailable);
           UpdateButtonState();
       }
       function MoveSelectedItems(srcListBox, dstListBox) {
           srcListBox.BeginUpdate();
           dstListBox.BeginUpdate();
           var items = srcListBox.GetSelectedItems();
           for (var i = items.length - 1; i >= 0; i = i - 1) {
               dstListBox.AddItem(items[i].text, items[i].value);
               srcListBox.RemoveItem(items[i].index);
           }
           srcListBox.EndUpdate();
           dstListBox.EndUpdate();
       }
       function MoveAllItems(srcListBox, dstListBox) {
           srcListBox.BeginUpdate();
           var count = srcListBox.GetItemCount();
           for (var i = 0; i < count; i++) {
               var item = srcListBox.GetItem(i);
               dstListBox.AddItem(item.text, item.value);
           }
           srcListBox.EndUpdate();
           srcListBox.ClearItems();
       }
       function UpdateButtonState() {
           btnMoveAllItemsToRight.SetEnabled(lbAvailable.GetItemCount() > 0);
           btnMoveAllItemsToLeft.SetEnabled(lbChoosen.GetItemCount() > 0);
           btnMoveSelectedItemsToRight.SetEnabled(lbAvailable.GetSelectedItems().length > 0);
           btnMoveSelectedItemsToLeft.SetEnabled(lbChoosen.GetSelectedItems().length > 0);
       }
       // ]]> 
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <dx:ASPxRoundPanel ID="ASPxRoundPanel1" runat="server" Theme="MetropolisBlue" Width="100%" HeaderText="Mantenedor de Usuario">
            <PanelCollection>
<dx:PanelContent runat="server">
    <table style="width:100%;">
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">
                <dx:ASPxLabel ID="ASPxLabel1" runat="server" Text="Usuario">
                </dx:ASPxLabel>
            </td>
            <td class="auto-style2">
                <dx:ASPxComboBox ID="cbbx_usuario" runat="server" Width="350px" TextField="NOMBRE" ValueField="COD_USUARIO" DataSourceID="sds_usuario" AutoPostBack="True">
                </dx:ASPxComboBox>
                <asp:SqlDataSource ID="sds_usuario" runat="server" ConnectionString="<%$ ConnectionStrings:GESTRAN_SISTEMA %>" SelectCommand="SELECT [COD_USUARIO], [NOMBRES] + ' ' + [APELLIDOS] NOMBRE FROM [GS_USUARIOS]"></asp:SqlDataSource>
            </td>
            <td class="auto-style8">&nbsp;</td>
            <td>
                <dx:ASPxButton ID="btnx_guardar" runat="server" Text="Guardar Perfil" Theme="MetropolisBlue">
                </dx:ASPxButton>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
                </dx:PanelContent>
</PanelCollection>
        </dx:ASPxRoundPanel>
    <div>
    
        <dx:ASPxRoundPanel ID="ASPxRoundPanel2" runat="server" ShowCollapseButton="true" ShowHeader="False" Theme="MetropolisBlue" Width="100%">
            <PanelCollection>
<dx:PanelContent runat="server">
    <table style="width:100%;">
        <tr>
            <td class="auto-style5">
                <dx:ASPxLabel ID="ASPxLabel2" runat="server" Text="Perfiles Disponibles">
                </dx:ASPxLabel>
            </td>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style5">
                <dx:ASPxLabel ID="ASPxLabel3" runat="server" Text="Perfiles Asignados">
                </dx:ASPxLabel>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">

                <dx:ASPxListBox ID="lbAvailable" runat="server" ClientInstanceName="lbAvailable" TextField="GLOSA" ValueField="COD_PERFIL"
                    Width="100%" Height="240px" SelectionMode="CheckColumn" DataSourceID="sds_Perfiles">
                    <ClientSideEvents SelectedIndexChanged="function(s, e) { UpdateButtonState(); }" />
                </dx:ASPxListBox>

                <asp:SqlDataSource ID="sds_Perfiles" runat="server" ConnectionString="<%$ ConnectionStrings:GESTRAN_SISTEMA %>" SelectCommand="SELECT [COD_PERFIL], [GLOSA], [ABREV] FROM [GS_PERFIL] WHERE ([IND_ACTIVO] = @IND_ACTIVO)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="True" Name="IND_ACTIVO" Type="Boolean" />
                    </SelectParameters>
                </asp:SqlDataSource>

            </td>
            <td style="text-align:center;" class="auto-style4">
                 <table style="width:100%;">
                    <tr>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>

                             <div>
                       <dx:ASPxButton ID="btnMoveSelectedItemsToRight" runat="server" ClientInstanceName="btnMoveSelectedItemsToRight"
                        AutoPostBack="False" Text="Agregar >" Width="130px" ClientEnabled="False"
                        ToolTip="Add selected items" Theme="MetropolisBlue">
                        <ClientSideEvents Click="function(s, e) { AddSelectedItems(); }" />
                    </dx:ASPxButton>
                </div>
                <div class="TopPadding">
                    <dx:ASPxButton ID="btnMoveAllItemsToRight" runat="server" ClientInstanceName="btnMoveAllItemsToRight"
                        AutoPostBack="False" Text="Agregar Todos >>" Width="130px" 
                        ToolTip="Add all items" Theme="MetropolisBlue">
                        <ClientSideEvents Click="function(s, e) { AddAllItems(); }" />
                    </dx:ASPxButton>
                </div>

                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>

                             <div>
                    <dx:ASPxButton ID="btnMoveSelectedItemsToLeft" runat="server" ClientInstanceName="btnMoveSelectedItemsToLeft"
                        AutoPostBack="False" Text="< Remover" Width="130px" ClientEnabled="False"
                        ToolTip="Remove selected items" Theme="MetropolisBlue">
                        <ClientSideEvents Click="function(s, e) { RemoveSelectedItems(); }" />
                    </dx:ASPxButton>
                </div>
                <div class="TopPadding">
                    <dx:ASPxButton ID="btnMoveAllItemsToLeft" runat="server" ClientInstanceName="btnMoveAllItemsToLeft"
                        AutoPostBack="False" Text="<< Remover Todos" Width="130px" ClientEnabled="False"
                        ToolTip="Remove all items" Theme="MetropolisBlue">
                        <ClientSideEvents Click="function(s, e) { RemoveAllItems(); }" />
                    </dx:ASPxButton>
                </div>

                        </td>
                    </tr>
                     <tr>
                         <td>&nbsp;</td>
                     </tr>
                </table>
            </td>
            <td>
               <dx:ASPxListBox ID="lbChoosen" runat="server" ClientInstanceName="lbChoosen" Width="100%"
                    Height="240px" SelectionMode="CheckColumn">
                    <ClientSideEvents SelectedIndexChanged="function(s, e) { UpdateButtonState(); }">
                    </ClientSideEvents>
                </dx:ASPxListBox>   
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
                </dx:PanelContent>
</PanelCollection>
        </dx:ASPxRoundPanel>
    
    </div>
    </form>
</body>
</html>
