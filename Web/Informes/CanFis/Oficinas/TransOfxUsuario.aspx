﻿<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="TransOfxUsuario.aspx.vb" Inherits="Web.Pantalla4" %>

<%@ Register Assembly="DevExpress.Web.v14.2, Version=14.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title> 
    <style type="text/css">
        .auto-style1
        {
            width: 894px;
        }
    </style>  
</head>
<body>
    <form id="form1" runat="server">
    <div>     
        <dx:ASPxRoundPanel ID="rdpx_header" runat="server" ShowCollapseButton="true" 
            Width="100%" Theme="MetropolisBlue" HeaderText="OFICINAS - Transaccional por Usuario">
            <PanelCollection>
                <dx:PanelContent ID="PanelContent1" runat="server">
                    <table style="border-collapse: collapse; width: 100%" align="center">
                        <tr>
                            <td>
                                <dx:ASPxRoundPanel ID="rp_Seleccion" runat="server" ShowCollapseButton="false" 
                                    View="GroupBox" Theme="Metropolis" HeaderText="Pre-Filtros" Width="100%">
                                    <PanelCollection>
                                        <dx:PanelContent>
                                            <table>
                                                <tr>
                                                    <td>
                                                        <dx:ASPxLabel ID="lbl_Oficina" runat="server" Text="Año" Theme="MetropolisBlue"></dx:ASPxLabel>
                                                    </td>                                                                   
                                                    <td>
                                                        &nbsp;
                                                    </td>
                                                    <td>
                                                        <dx:ASPxLabel ID="lbl_Anio" runat="server" Text="Mes" Theme="MetropolisBlue"></dx:ASPxLabel>
                                                    </td>                                                                
                                                    <td>
                                                        &nbsp;
                                                    </td>
                                                    <td>
                                                        <dx:ASPxLabel ID="lbl_Mes" runat="server" Text="Oficina" Theme="MetropolisBlue"></dx:ASPxLabel>
                                                    </td>
                                                    <td>
                                                        &nbsp;
                                                    </td>
                                                    <td>
                                                        &nbsp;
                                                    </td>                                                                   
                                                </tr>
                                                <tr>
                                                    <td>                                                        
                                                        <dx:ASPxComboBox ID="cb_Anio" runat="server" ValueType="System.String" Theme="MetropolisBlue">
                                                            <ClientSideEvents SelectedIndexChanged="function(s, e) {cbMes.PerformCallback(); cbOficina.PerformCallback();}" />
                                                        </dx:ASPxComboBox>
                                                    </td>
                                                    <td>
                                                        &nbsp;
                                                    </td>
                                                    <td>
                                                        <dx:ASPxComboBox ID="cb_Mes" runat="server" ValueType="System.String" Theme="MetropolisBlue" 
                                                            ClientInstanceName="cbMes" OnCallback="cb_Mes_Callback">
                                                            <ClientSideEvents SelectedIndexChanged="function(s, e) {cbOficina.PerformCallback();}" />
                                                        </dx:ASPxComboBox>
                                                    </td>
                                                    <td>
                                                        &nbsp;
                                                    </td>
                                                    <td>
                                                        <dx:ASPxComboBox ID="cb_Oficina" runat="server" ValueType="System.String" Theme="MetropolisBlue" 
                                                            ClientInstanceName="cbOficina" OnCallback="cb_Oficina_Callback"></dx:ASPxComboBox>
                                                    </td>
                                                    <td>
                                                        &nbsp;
                                                    </td>
                                                    <td>
                                                        <dx:ASPxButton ID="btnx_filtrar" runat="server" Text="Aplicar Pre-Filtros" 
                                                            Theme="MetropolisBlue" Width="140px" AutoPostBack="false">
                                                            <ClientSideEvents Click="function(s, e) {callback.PerformCallback();}" />
                                                        </dx:ASPxButton>
                                                    </td>
                                                </tr>
                                            </table>
                                        </dx:PanelContent>
                                    </PanelCollection>
                                </dx:ASPxRoundPanel>
                            </td>
                        </tr>
                    </table>
                </dx:PanelContent>
            </PanelCollection>
        </dx:ASPxRoundPanel>
        <dx:ASPxCallbackPanel ID="ASPxCallbackPanel1" runat="server" ClientInstanceName="callback" 
            OnCallback="ASPxCallbackPanel1_Callback">
            <PanelCollection>
                <dx:PanelContent>
                    <dx:ASPxRoundPanel ID="ASPxRoundPanel2" runat="server" ShowCollapseButton="false" 
                        Width="100%" ShowHeader="false" Theme="MetropolisBlue">
                        <PanelCollection>
                            <dx:PanelContent ID="PanelContent2" runat="server">
                                <%--<table style="width: 100%; border-collapse: collapse">                                                                    
                                    <tr>
                                        <td align="center">--%>
                                            <table align="center" style="border-collapse: collapse; width: 100%">
                                                <tr>
                                                    <td colspan="3">
                                                        <table style="width:100%;">
                                                            <tr>
                                                                <td>&nbsp;</td>
                                                                <td>&nbsp;</td>
                                                                <td>&nbsp;</td>
                                                                <td>&nbsp;</td>
                                                                <td>&nbsp;</td>
                                                                <td class="auto-style1">&nbsp;</td>
                                                                <td>
                                                                    <dx:ASPxButton ID="btnx_expxls" runat="server" Text="Excel" Theme="MetropolisBlue" Visible="false" Width="90px">
                                                                        <Image Url="~/App_Themes/Default/img/page/save.png">
                                                                        </Image>
                                                                    </dx:ASPxButton>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="center">
                                                        <dx:ASPxLabel ID="lbl_TituloGrilla1" runat="server" Text="TRANSACCIONALIDAD TOTAL" Font-Bold="true" Theme="MetropolisBlue"></dx:ASPxLabel>
                                                    </td>
                                                    <%--<td align="right">
                                                        <table style="border-collapse: collapse" align="right">
                                                            <tr>
                                                                <td>
                                                                    <dx:ASPxHyperLink ID="hl_CleanFilterG1" runat="server" Text="Limpiar Filtros" NavigateUrl="javascript:void(0);" Theme="MetropolisBlue">
                                                                        <ClientSideEvents Click="function(s, e) {grilla1.PerformCallback('CleanFilter');}" />
                                                                    </dx:ASPxHyperLink>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <dx:ASPxHyperLink ID="hl_CleanSortG1" runat="server" Text="Limpiar Ordenamientos" NavigateUrl="javascript:void(0);" Theme="MetropolisBlue">
                                                                        <ClientSideEvents Click="function(s, e) {grilla1.PerformCallback('CleanSort');}" />
                                                                    </dx:ASPxHyperLink>
                                                                </td>
                                                            </tr>
                                                        </table>                                          
                                                    </td>--%>
                                                    <%--<td>
                                                        &nbsp;
                                                    </td>--%>
                                                    <td>
                                                        &nbsp;
                                                    </td>
                                                    <td align="center">
                                                        <dx:ASPxLabel ID="lbl_TituloGrilla2" runat="server" Text="TRANSACCIONALIDAD FIN DE SEMANA" Font-Bold="true" Theme="MetropolisBlue"></dx:ASPxLabel>
                                                    </td>
                                                    <%--<td align="right">
                                                        <table style="border-collapse: collapse" align="right">
                                                            <tr>
                                                                <td>
                                                                    <dx:ASPxHyperLink ID="hl_CleanFilterG12" runat="server" Text="Limpiar Filtros" NavigateUrl="javascript:void(0);" Theme="MetropolisBlue">
                                                                        <ClientSideEvents Click="function(s, e) {grilla2.PerformCallback('CleanFilter');}" />
                                                                    </dx:ASPxHyperLink>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <dx:ASPxHyperLink ID="hl_CleanSortG2" runat="server" Text="Limpiar Ordenamientos" NavigateUrl="javascript:void(0);" Theme="MetropolisBlue">
                                                                        <ClientSideEvents Click="function(s, e) {grilla2.PerformCallback('CleanSort');}" />
                                                                    </dx:ASPxHyperLink>
                                                                </td>
                                                            </tr>
                                                        </table>                                          
                                                    </td>--%>
                                                </tr>
                                                <tr>
                                                    <td align="center" valign="top" colspan="1">
                                                        <dx:ASPxGridView ID="gv_Grilla1" ClientInstanceName="grilla1" runat="server" OnHeaderFilterFillItems="gv_Grilla1_HeaderFilterFillItems" 
                                                            OnCustomCallback="gv_Grilla1_CustomCallback" Theme="MetropolisBlue">
                                                            <Templates>
                                                                <GroupRowContent>
                                                                    <table style="width: 100%">
                                                                        <tr>
                                                                            <td>
                                                                                <%# Container.GroupText %>
                                                                            </td>
                                                                            <td align="right">
								                                                <%# Container.SummaryText.Substring(2, Container.SummaryText.Length-3) %>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </GroupRowContent>
                                                            </Templates>                                                                     
                                                        </dx:ASPxGridView>
                                                    </td>
                                                    <td style="width: 100px">
                                                        &nbsp;
                                                    </td>
                                                    <td align="center" valign="top" colspan="1">
                                                        <dx:ASPxGridView ID="gv_Grilla2" ClientInstanceName="grilla2" runat="server" OnHeaderFilterFillItems="gv_Grilla2_HeaderFilterFillItems" 
                                                            OnCustomCallback="gv_Grilla2_CustomCallback" Theme="MetropolisBlue">
                                                            <Templates>
                                                                <GroupRowContent>
                                                                    <table style="width: 100%">
                                                                        <tr>
                                                                            <td>
                                                                                <%# Container.GroupText %>
                                                                            </td>
                                                                            <td align="right">
								                                                <%# Container.SummaryText.Substring(2, Container.SummaryText.Length-3) %>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </GroupRowContent>
                                                            </Templates>                   
                                                        </dx:ASPxGridView>
                                                    </td>
                                                </tr>
                                            </table>
                                       <%-- </td>
                                    </tr>
                                </table>--%>
                            </dx:PanelContent>
                        </PanelCollection>
                    </dx:ASPxRoundPanel>                
                </dx:PanelContent>
            </PanelCollection>
        </dx:ASPxCallbackPanel>
    </div>
        <dx:ASPxGridViewExporter ID="pvex_datos1" runat="server" GridViewID="gv_Grilla1">
        </dx:ASPxGridViewExporter>
        <dx:ASPxGridViewExporter ID="pvex_datos2" runat="server" GridViewID="gv_Grilla2">
        </dx:ASPxGridViewExporter>
    </form>
</body>
</html>
