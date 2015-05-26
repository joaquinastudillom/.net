﻿<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="TipoTx_Segmento3D.aspx.vb" Inherits="Web.TipoTx_Segmento3D" %>

<%@ Register Assembly="DevExpress.Web.ASPxTreeList.v14.2, Version=14.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxTreeList" TagPrefix="dx" %>

<%@ Register assembly="DevExpress.Web.v14.2, Version=14.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.ASPxPivotGrid.v14.2, Version=14.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPivotGrid" tagprefix="dx" %>

<%@ Register assembly="DevExpress.XtraCharts.v14.2.Web, Version=14.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.XtraCharts.Web" tagprefix="dxchartsui" %>
<%@ Register assembly="DevExpress.XtraCharts.v14.2, Version=14.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.XtraCharts" tagprefix="cc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="../../App_Themes/Default/css/StyleSheet.css" rel="Stylesheet" type="text/css" />
    <script src="../../App_Themes/Default/js/ddex.js"></script>
    <style type="text/css">
        .auto-style8
        {
            width: 130px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    

    

<dx:ASPxRoundPanel ID="rdpx_header" runat="server" HeaderText="MULTICANAL - Tipo Transacción y Segmento" ShowCollapseButton="true" Theme="MetropolisBlue" Width="100%">
            <PanelCollection>
<dx:PanelContent runat="server">
    <dx:ASPxRoundPanel ID="rdpx_prefiltros" runat="server" HeaderText="Pre-Filtros" ShowCollapseButton="True" Theme="MetropolisBlue" View="GroupBox" Width="100%">
        <PanelCollection>
            <dx:PanelContent runat="server">
                <table style="width: 100%;">
                    <tr>
                        <td class="auto-style" colspan="2">
                            <div style="text-align:center;">
                                <dx:ASPxLabel ID="ASPxLabel1" runat="server" Text="AÑO" Theme="MetropolisBlue">
                                </dx:ASPxLabel>
                            </div>
                        </td>
                        <td class="auto-style" colspan="2">
                            <div style="text-align:center;">
                                <dx:ASPxLabel ID="ASPxLabel2" runat="server" Text="MES" Theme="MetropolisBlue">
                                </dx:ASPxLabel>
                            </div>
                        </td>
                        <td class="auto-style">&nbsp;</td>
                        <td class="auto-style">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style8">
                            <dx:ASPxLabel ID="lblx_nperiodo1" runat="server" Text="Desde:" Theme="MetropolisBlue">
                            </dx:ASPxLabel>
                        </td>
                        <td class="auto-style8">
                            <dx:ASPxLabel ID="lblx_nperiodo2" runat="server" Text="Hasta:" Theme="MetropolisBlue">
                            </dx:ASPxLabel>
                        </td>
                        <td class="auto-style8">
                            <dx:ASPxLabel ID="lblx_noficina3" runat="server" Text="Desde:" Theme="MetropolisBlue">
                            </dx:ASPxLabel>
                        </td>
                        <td class="auto-style8">
                            <dx:ASPxLabel ID="lblx_noficina4" runat="server" Text="Hasta" Theme="MetropolisBlue">
                            </dx:ASPxLabel>
                        </td>
                        <td class="auto-style8">
                            <dx:ASPxLabel ID="lblx_noficina6" runat="server" Text="Tipo Transacción" Theme="MetropolisBlue">
                            </dx:ASPxLabel>
                        </td>
                        <td class="auto-style8">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style8">
                            <dx:ASPxComboBox ID="cbbx_anoini" runat="server" Width="120px" Theme="MetropolisBlue">
                                <ClientSideEvents SelectedIndexChanged="function(s, e) {
	                                                    GraficChart.PerformCallback();
                                                    }" />
                            </dx:ASPxComboBox>
                        </td>
                        <td class="auto-style8">
                            <dx:ASPxComboBox ID="cbbx_anofin" runat="server" Width="120px" Theme="MetropolisBlue">
                                <ClientSideEvents SelectedIndexChanged="function(s, e) {
	                                                    GraficChart.PerformCallback();
                                                    }" />
                            </dx:ASPxComboBox>
                        </td>
                        <td class="auto-style8">
                            <dx:ASPxComboBox ID="cbbx_mesini" runat="server" Width="120px" Theme="MetropolisBlue">
                                <ClientSideEvents SelectedIndexChanged="function(s, e) {
	                                                    GraficChart.PerformCallback();
                                                    }" />
                            </dx:ASPxComboBox>
                        </td>
                        <td class="auto-style8">
                            <dx:ASPxComboBox ID="cbbx_mesfin" runat="server" Width="120px" Theme="MetropolisBlue">
                                <ClientSideEvents SelectedIndexChanged="function(s, e) {
	                                                    GraficChart.PerformCallback();
                                                    }" />
                            </dx:ASPxComboBox>
                        </td>
                        <td class="auto-style8">
                            <dx:ASPxDropDownEdit ID="dde_transaccion" runat="server" ClientInstanceName="checkComboBoxGpo" NullText="Seleccione..." Theme="MetropolisBlue" Width="150px">
                                <DropDownWindowTemplate>
                                    <dx:ASPxListBox ID="lstx_transaccion" runat="server" ClientInstanceName="checkListBoxGpo" DataSourceID="sds_transaccion" Height="300px" SelectionMode="CheckColumn" TextField="NOMBRE" Theme="MetropolisBlue" ValueField="ID" Width="250px">
                                        <Border BorderStyle="None" />
                                        <BorderBottom BorderColor="#DCDCDC" BorderStyle="Solid" BorderWidth="1px" />
                                        <ClientSideEvents SelectedIndexChanged="OnListBoxSelectionChangedGpo" />
                                    </dx:ASPxListBox>
                                    <table style="width: 100%">
                                        <tr>
                                            <td style="padding: 4px">
                                                <dx:ASPxButton ID="ASPxButtonGR" runat="server" AutoPostBack="False" style="float: right" Text="Aceptar" Theme="MetropolisBlue">
                                                    <ClientSideEvents Click="function(s, e){ checkComboBoxGpo.HideDropDown(); GraficChart.PerformCallback();}" />
                                                </dx:ASPxButton>
                                            </td>
                                        </tr>
                                    </table>
                                </DropDownWindowTemplate>
                                <ClientSideEvents DropDown="SynchronizeListBoxValuesGpo" TextChanged="SynchronizeListBoxValuesGpo" />
                                <DropDownWindowStyle BackColor="#EDEDED">
                                </DropDownWindowStyle>
                            </dx:ASPxDropDownEdit>
                        </td>
                        <td class="auto-style8">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                <asp:SqlDataSource ID="sds_transaccion" runat="server" ConnectionString="<%$ ConnectionStrings:GESTRAN_RESUMEN %>" SelectCommand="SP_CONSULTA_FILTROS" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="TIPOTX" Name="FILTRO" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </dx:PanelContent>
        </PanelCollection>
    </dx:ASPxRoundPanel>
                </dx:PanelContent>
</PanelCollection>
</dx:ASPxRoundPanel>




<dx:ASPxRoundPanel ID="rdpx_grid" runat="server" ShowHeader="False" Theme="MetropolisBlue" Width="100%">
            <PanelCollection>
<dx:PanelContent runat="server">
    
    <div style="text-align:center;">
    <dxchartsui:WebChartControl ID="wchx_barras" runat="server" ClientInstanceName="GraficChart" CrosshairEnabled="True" Height="429px" Width="1000px" AppearanceNameSerializable="Light" PaletteName="Concourse">
        <emptycharttext text=" " />
        <smallcharttext text=" " />
        <diagramserializable>
            <cc1:XYDiagram3D PerspectiveAngle="20" PlaneDepthFixed="5" RotationAngleX="0" RotationAngleY="0" RotationOrder="XYZ" RotationType="UseAngles" SeriesDistance="0" SeriesIndentFixed="1" ZoomPercent="200">
                <axisx>
                    <numericscaleoptions aggregatefunction="Sum" scalemode="Automatic" />
                </axisx>
                <fillstyle fillmode="Solid">
                </fillstyle>
            </cc1:XYDiagram3D>
        </diagramserializable>
        <legend alignmenthorizontal="Right" maxverticalpercentage="50"></legend>
        <seriesserializable>
            <cc1:Series Name="Series 1">
                <viewserializable>
                    <cc1:SideBySideBar3DSeriesView>
                    </cc1:SideBySideBar3DSeriesView>
                </viewserializable>
            </cc1:Series>
            <cc1:Series Name="Series 2">
                <viewserializable>
                    <cc1:SideBySideBar3DSeriesView>
                    </cc1:SideBySideBar3DSeriesView>
                </viewserializable>
            </cc1:Series>
        </seriesserializable>
        <seriestemplate>
            <viewserializable>
                <cc1:SideBySideBar3DSeriesView>
                </cc1:SideBySideBar3DSeriesView>
            </viewserializable>
        </seriestemplate>
    </dxchartsui:WebChartControl>
    </div>

                </dx:PanelContent>
</PanelCollection>
        </dx:ASPxRoundPanel>



    </div>
    </form>
</body>
</html>
