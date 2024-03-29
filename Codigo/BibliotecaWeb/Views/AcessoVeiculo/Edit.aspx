﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<Models.AcessoVeiculoModel>" %>
<%@ Import Namespace="Model.Helpers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    <%: Models.App_GlobalResources.Mensagem.registrarAcessoVeiculo %>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2><%: Models.App_GlobalResources.Mensagem.alterar %></h2>

<script src="<%: Url.Content("~/Scripts/jquery.validate.min.js") %>" type="text/javascript"></script>
<script src="<%: Url.Content("~/Scripts/jquery.validate.unobtrusive.min.js") %>" type="text/javascript"></script>

<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>
    <fieldset>
        <legend><%: Models.App_GlobalResources.Mensagem.acessoVeiculo %></legend>

        <%: Html.HiddenFor(model => model.IdAcessoVeiculo) %>
        <%: Html.HiddenFor(model => model.Data) %>

        <div class="editor-label">
            <%: Models.App_GlobalResources.Mensagem.veiculo %>
        </div>
        <div class="editor-field">
            <%: Html.DropDownListFor(model => model.IdVeiculo, ViewBag.IdBloco as SelectList, "Selecione")%>
            <%: Html.ValidationMessageFor(model => model.IdVeiculo)%>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.TipoAcesso) %>
        </div>
        <div class="editor-field">
            <%: Html.EnumDropDownListFor(model => model.TipoAcesso, Models.ListaTipoAcesso.Entrada)%>
            <%: Html.ValidationMessageFor(model => model.TipoAcesso) %>
        </div>
        <br />
        <p>
            <input type="submit" value="<%: Models.App_GlobalResources.Mensagem.salvar %>" />
        </p>
    </fieldset>
<% } %>

<div>
    <%: Html.ActionLink(Models.App_GlobalResources.Mensagem.voltar, "Index") %>
</div>

</asp:Content>
