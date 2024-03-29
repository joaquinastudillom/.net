﻿<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="CambiarClave.aspx.vb" Inherits="Web.CambiarClave" %>

<%@ Register assembly="DevExpress.Web.v14.2, Version=14.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>


<%@ Register assembly="DevExpress.Web.v14.2, Version=14.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx1" %>

<%@ Register assembly="DevExpress.Web.v14.2, Version=14.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
body {
    overflow:hidden;
}
.Textos_Top_Banner
{
	
	font-family: Arial, Helvetica, sans-serif;
	font-size: 8px;
	color: Gray;
}
        .style3
        {
            width: 170px;
        }
        
        
.dxisControl .dxis-itemTextArea {
    bottom: 180px;
    margin-left:850px;
    width: 450px;
    height: 120px;
    padding: 15px 16px 21px;
    color: #fff;
    border-radius:5px;
    box-shadow: 0px 4px 0px rgba(50, 50, 50, 0.3);
    background-color: #333333;
    background-color: rgba(0, 0, 0, 0.75);
}

.dxisControl .dxis-itemTextArea a {
    color: white;
}

.dxisControl .dxis-itemTextArea p {
    color: white;
}

.dxisControl .dxcolor
{
    background:rgba(153, 48, 32, 0.95);
    
    }
        
        .dxflInternalEditorTable_Aqua
        {
            width: 200px;
        }
        .style6
        {
            height: 33px;
        }
        
        span.dx-vam, span.dx-vat, span.dx-vab, a.dx-vam, a.dx-vat, a.dx-vab 
{ 
    line-height: 100%; 
    padding: 2px 0;
    text-decoration: inherit;
}
.dx-vam, .dx-valm { vertical-align: middle; }
.dx-vam, .dx-vat, .dx-vab { display: inline-block!important; }
.dxrpcontent, .dxrpCW, .dxrpAW {
    height: 100%;
}
        
        .auto-style1 {
            height: 17px;
        }
        
        </style>
        <link href="App_Themes/StyleSheet.css" rel="Stylesheet" type="text/css" />
    <script language="javascript" type="text/javascript">
        function obtiene_resolucion() {
            var curr_width = screen.width;
            document.getElementById("txtanchopx").value = curr_width;
        }
                </script>
</head>
<body style="margin-top:0; margin-left:0; margin-right:0;">
<form id="form1" runat="server">
    <div style="background:rgba(153, 48, 32, 0.9); width:100%; vertical-align:middle; height:80px; z-index:99; position:absolute; top:0px; left:0px;">
        <img style="z-index:101; margin-left:50px; margin-top:11px;" alt="Gestran S.A." src="../App_Themes/img_slide/logo-blanco.png" />
    </div>
    <div style="background:rgba(0, 0, 0, 0.8); width:100%; height:28px; z-index:99; position:absolute; bottom:0px; left:0px; vertical-align:middle;">
        
    </div>
    <div style="background-color:transparent; width:100%; height:20px; z-index:99; position:absolute; bottom:0px; left:0px; vertical-align:middle;">
         <span style="font-family: 'BebasNeueRegular', sans-serif; font-size: 12px; font-weight:bold; margin-left:50px; color: #909090; ">© GESTRAN S.A. - SANTIAGO DE CHILE</span> 
    </div>
     <div style="position:absolute; left:30px; top:110px; z-index:110; background-color:transparent">
            <dx:ASPxRoundPanel ID="ASPxRoundPanel" runat="server" Width="550px" HeaderText="Su contraseña ha caducado, para acceder debe cambiarla" Height="236px" Theme="DevEx">
                <HeaderStyle Font-Bold="True" Font-Size="12px" ForeColor="#CC0000" />
            <PanelCollection>
<dx:PanelContent ID="PanelContent1" runat="server">
    <table align="center" width="545px">
        <tr>
            <td colspan="2">
                <dx2:ASPxLabel ID="lblx_politicas" runat="server" Font-Bold="True" ForeColor="#666666" Theme="DevEx">
                </dx2:ASPxLabel>
                <br />
                <dx2:ASPxLabel ID="lblx_largominimo" runat="server" Theme="DevEx">
                </dx2:ASPxLabel>
                <br />
                <dx2:ASPxLabel ID="lblx_numeros" runat="server" Theme="DevEx">
                </dx2:ASPxLabel>
                <br />
                <dx2:ASPxLabel ID="lblx_especial" runat="server" Theme="DevEx">
                </dx2:ASPxLabel>
                <br />
                <dx2:ASPxLabel ID="lblx_mayus" runat="server" Theme="DevEx">
                </dx2:ASPxLabel>
                <br />
                <dx2:ASPxLabel ID="lblx_minus" runat="server" Theme="DevEx">
                </dx2:ASPxLabel>
                <br />
                <dx2:ASPxLabel ID="lblx_historial" runat="server" Theme="DevEx">
                </dx2:ASPxLabel>
            </td>
        </tr>
        <tr>
            <td class="style2" colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <dx1:ASPxLabel ID="lbl_pass_actual" runat="server" Font-Bold="True" ForeColor="#666666" Text="Contraseña actual:" Theme="DevEx">
                </dx1:ASPxLabel>
            </td>
            <td class="auto-style1">
                <dx1:ASPxTextBox ID="txt_act_pass" runat="server" Width="200px" Password="true" 
                    Theme="Default">
                    <ValidationSettings>
                        <RequiredField IsRequired="True" ErrorText="Requerido"/>
                    </ValidationSettings>
                </dx1:ASPxTextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <dx1:ASPxLabel ID="lbl_pass_nuevo" runat="server" Font-Bold="True" ForeColor="#666666" Text="Contraseña nueva:" Theme="DevEx">
                </dx1:ASPxLabel>
            </td>
            <td class="auto-style1">
                <dx1:ASPxTextBox ID="txt_act_pass_nuevo" runat="server" Width="200px" 
                    Password="true" Theme="Default" >
                    <ValidationSettings>
                        <RequiredField ErrorText="Requerido" IsRequired="True" />
                    </ValidationSettings>
                </dx1:ASPxTextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                <dx1:ASPxLabel ID="lbl_reingresa_pass" runat="server" Font-Bold="True" ForeColor="#666666" Text="Confirmar contraseña:" Theme="DevEx">
                </dx1:ASPxLabel>
            </td>
            <td class="auto-style6">
                <dx1:ASPxTextBox ID="txt_reingresar_pass" runat="server" Width="200px" 
                    Password="true" Theme="Default" >
                    <ValidationSettings>
                        <RequiredField ErrorText="Requerido" IsRequired="True" />
                    </ValidationSettings>
                </dx1:ASPxTextBox>
            </td>
        </tr>
        <tr>
            <td align="center" class="auto-style1" colspan="2">
                </td>
        </tr>
        <tr>
            <td align="center" class="style4">
                &nbsp;</td>
            <td align="center" class="style4">
                <table style="width:100%;">
                    <tr>
                        <td>
                            <dx1:ASPxButton ID="btn_Aceptar_CambiarClaveCaducada" runat="server" 
                                Text="Aceptar" Theme="PlasticBlue" Width="200px">
                            </dx1:ASPxButton>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td align="center" class="style4" colspan="2">
                <asp:Label ID="lbl_act_mensaje" runat="server" Font-Bold="True" ForeColor="#666666"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center" class="auto-style1" colspan="2"></td>
        </tr>
        <tr>
            <td align="center" class="style4" colspan="2">
                <dx1:ASPxLabel ID="lbl_mensaje_ingreso" runat="server" Font-Bold="True" Theme="DevEx">
                </dx1:ASPxLabel>
                <dx1:ASPxHyperLink ID="ASPxHyperLink1" runat="server" Font-Bold="True" NavigateUrl="~/index_slide2.aspx" Target="_blank"  Theme="DevEx">
                </dx1:ASPxHyperLink>
            </td>
        </tr>
    </table>
                </dx:PanelContent>
</PanelCollection>
        </dx:ASPxRoundPanel>

</div>
    <div style="position:absolute; top:0; left:0; bottom:0; z-index:81; right:0; width:100%; height:1000px; background-image: url('../App_Themes/img_slide/pattern1.png');">
    </div>
    <div style="height:600px; position:relative; z-index:80;">   
            <dx2:ASPxImageSlider ID="ASPxImageSlider2" runat="server" 
            BinaryImageCacheFolder="~\Thumb\" Width="100%" Height="800px" 
                ForeColor="#333333">
            <SettingsImageArea ImageSizeMode="ActualSizeOrFit" NavigationButtonVisibility="None"
            ItemTextVisibility="Always" />
            <SettingsNavigationBar Mode="Dots" />
<SettingsImageArea ItemTextVisibility="Always" NavigationButtonVisibility="None"></SettingsImageArea>

<SettingsNavigationBar Mode="Dots"></SettingsNavigationBar>

            <SettingsSlideShow AutoPlay="true" StopPlayingWhenPaging="false" PausePlayingWhenMouseOver="false" PlayPauseButtonVisibility="Faded"></SettingsSlideShow>
            <Items>
                <dx2:ImageSliderItem ImageUrl="~/App_Themes/img_slide/slide01.jpg">
                    <TextTemplate>
                        <h3>INTELIGENCIA TRANSACCIONAL</h3>
                        <p>Herramientas para el análisis integral y la gestión eficiente de las transacciones</p>
                    </TextTemplate>
                </dx2:ImageSliderItem>
                <dx2:ImageSliderItem ImageUrl="~/App_Themes/img_slide/slide02.jpg">
                    <TextTemplate>
                        <h3>GESTIÓN EFECTIVA DE DATOS Y TRANSACCIONES</h3>
                        <p>Apoyo a la reducción de costos y toma de decisiones oportunas</p>
                    </TextTemplate>
                </dx2:ImageSliderItem>
                <dx2:ImageSliderItem ImageUrl="~/App_Themes/img_slide/slide03.jpg">
                    <TextTemplate>
                        <h3>SOLO SE PUEDE GESTIONAR, LO QUE SE MIDE</h3>
                        <p>Colaboramos para una gestión eficiente a través del análisis integral de las transacciones</p>
                    </TextTemplate>
                </dx2:ImageSliderItem>
            </Items>
                <Styles>
                    <ItemTextArea cssclass="dxcolor">
                    </ItemTextArea>
                </Styles>
            </dx2:ASPxImageSlider>
    
    </div>


    <!--<p>
                    <asp:TextBox ID="txtanchopx" runat="server" 
                        style="z-index: 100; left: 296px; top: 172px; position: absolute"></asp:TextBox>
                </p>-->


    </form>    
</body>
</html>


