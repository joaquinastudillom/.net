﻿<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Mantenedor_Menu.aspx.vb" Inherits="Web.Mantenedor_Menu" %>

<%@ Register assembly="DevExpress.Web.v14.2, Version=14.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <dx:ASPxRoundPanel ID="ASPxRoundPanel1" runat="server" HeaderText="Mantención de Menú" Theme="MetropolisBlue" Width="100%">
            <PanelCollection>
<dx:PanelContent runat="server">
                </dx:PanelContent>
</PanelCollection>
        </dx:ASPxRoundPanel>
    
    </div>
        <dx:ASPxRoundPanel ID="ASPxRoundPanel2" runat="server" ShowHeader="False" Theme="MetropolisBlue" Width="100%">
            <PanelCollection>
<dx:PanelContent runat="server">
    <dx:ASPxGridView ID="gdvx_menu" runat="server" AutoGenerateColumns="False" DataSourceID="sds_menu" EnableTheming="True" KeyFieldName="COD_FUNCION" Theme="MetropolisBlue">
        <Columns>
            <dx:GridViewCommandColumn ShowDeleteButton="True" ButtonType="Image" ShowEditButton="True" ShowInCustomizationForm="True" ShowNewButtonInHeader="True" VisibleIndex="0">
            </dx:GridViewCommandColumn>
            <dx:GridViewDataTextColumn FieldName="COD_FUNCION" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="0" Width="50px">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="COD_PADRE" ShowInCustomizationForm="True" VisibleIndex="1" Width="50px">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="NIVEL" ShowInCustomizationForm="True" VisibleIndex="2" Width="50px">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="ORDEN" ShowInCustomizationForm="True" VisibleIndex="3" Width="50px">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="URL_IMAGEN" ShowInCustomizationForm="True" VisibleIndex="4" Width="300px">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="GLOSA" ShowInCustomizationForm="True" VisibleIndex="5" Width="250px">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="ABREV" ShowInCustomizationForm="True" VisibleIndex="6" Width="50px">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataCheckColumn FieldName="IND_SISTEMA" ShowInCustomizationForm="True" VisibleIndex="7" Width="30px">
            </dx:GridViewDataCheckColumn>
            <dx:GridViewDataCheckColumn FieldName="IND_VIGENCIA" ShowInCustomizationForm="True" VisibleIndex="8" Width="30px">
            </dx:GridViewDataCheckColumn>
        </Columns>
        <Settings VerticalScrollableHeight="250" />
                <SettingsBehavior ConfirmDelete="True" />
            <SettingsText ConfirmDelete="Está seguro que desea continuar.?" />
         <SettingsCommandButton>
             <NewButton>
                 <Image ToolTip="Nuevo" Url="../../App_Themes/Default/img/grid/add_black.png"></Image>
             </NewButton>
             <DeleteButton>
                 <Image ToolTip="Eliminar" Url="../../App_Themes/Default/img/grid/cancel_black.png"></Image>
             </DeleteButton>
             <EditButton>
                 <Image ToolTip="Editar" Url="../../App_Themes/Default/img/grid/edit_black.png"></Image>
             </EditButton>
             <UpdateButton>
                 <Image Width="29px" Height="29px" ToolTip="Actualizar" Url="../../App_Themes/Default/img/grid/guardar_black.png"></Image>
             </UpdateButton>
             <CancelButton>
                 <Image Width="24px" Height="24px" ToolTip="Cancelar" Url="../../App_Themes/Default/img/grid/delete_black.png"></Image>
             </CancelButton>
         </SettingsCommandButton>
    </dx:ASPxGridView>
                </dx:PanelContent>
</PanelCollection>
        </dx:ASPxRoundPanel>
        <br />
        <asp:SqlDataSource ID="sds_menu" runat="server" ConnectionString="<%$ ConnectionStrings:GESTRAN_SISTEMA %>" DeleteCommand="DELETE FROM [GS_FUNCION_MENU] WHERE [COD_FUNCION] = @COD_FUNCION" InsertCommand="INSERT INTO [GS_FUNCION_MENU] ([COD_FUNCION], [COD_PADRE], [NIVEL], [ORDEN], [URL_IMAGEN], [GLOSA], [ABREV], [IND_SISTEMA], [IND_VIGENCIA]) VALUES (@COD_FUNCION, @COD_PADRE, @NIVEL, @ORDEN, @URL_IMAGEN, @GLOSA, @ABREV, @IND_SISTEMA, @IND_VIGENCIA)" SelectCommand="SELECT [COD_FUNCION], [COD_PADRE], [NIVEL], [ORDEN], [URL_IMAGEN], [GLOSA], [ABREV], [IND_SISTEMA], [IND_VIGENCIA] FROM [GS_FUNCION_MENU]" UpdateCommand="UPDATE [GS_FUNCION_MENU] SET [COD_PADRE] = @COD_PADRE, [NIVEL] = @NIVEL, [ORDEN] = @ORDEN, [URL_IMAGEN] = @URL_IMAGEN, [GLOSA] = @GLOSA, [ABREV] = @ABREV, [IND_SISTEMA] = @IND_SISTEMA, [IND_VIGENCIA] = @IND_VIGENCIA WHERE [COD_FUNCION] = @COD_FUNCION">
            <DeleteParameters>
                <asp:Parameter Name="COD_FUNCION" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="COD_FUNCION" Type="String" />
                <asp:Parameter Name="COD_PADRE" Type="String" />
                <asp:Parameter Name="NIVEL" Type="Byte" />
                <asp:Parameter Name="ORDEN" Type="Int16" />
                <asp:Parameter Name="URL_IMAGEN" Type="String" />
                <asp:Parameter Name="GLOSA" Type="String" />
                <asp:Parameter Name="ABREV" Type="String" />
                <asp:Parameter Name="IND_SISTEMA" Type="Boolean" />
                <asp:Parameter Name="IND_VIGENCIA" Type="Boolean" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="COD_PADRE" Type="String" />
                <asp:Parameter Name="NIVEL" Type="Byte" />
                <asp:Parameter Name="ORDEN" Type="Int16" />
                <asp:Parameter Name="URL_IMAGEN" Type="String" />
                <asp:Parameter Name="GLOSA" Type="String" />
                <asp:Parameter Name="ABREV" Type="String" />
                <asp:Parameter Name="IND_SISTEMA" Type="Boolean" />
                <asp:Parameter Name="IND_VIGENCIA" Type="Boolean" />
                <asp:Parameter Name="COD_FUNCION" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
