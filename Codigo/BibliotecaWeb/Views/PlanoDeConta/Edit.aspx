﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Models.PlanoDeContaModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
   <%: Models.App_GlobalResources.Mensagem.editarPlanoDeConta %>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2><%: Models.App_GlobalResources.Mensagem.editarPlanoDeConta%></h2>

<script src="<%: Url.Content("~/Scripts/jquery.validate.min.js") %>" type="text/javascript"></script>
<script src="<%: Url.Content("~/Scripts/jquery.validate.unobtrusive.min.js") %>" type="text/javascript"></script>

<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>
    <fieldset>
        <legend><%: Models.App_GlobalResources.Mensagem.planoDeConta %></legend>

        <% using (Html.BeginForm("Create", "PlanoDeConta", FormMethod.Post, null))
           { %>
        <div class="editor-label">
            <%: Html.LabelFor(model => model.DescricaoGrupoPlanoContas)%>
        </div>
        <div class="editor-field">
            <%: Html.DropDownList("IdGrupoPlanoDeConta", null, "Selecione", new { onchange = "this.form.submit();" })%>
            <%: Html.ValidationMessageFor(model => model.IdGrupoPlanoDeConta)%>
        </div>
        <% } %>
        <div class="editor-label">
            <%: Html.LabelFor(model => model.Descricao) %>
        </div>
        <div class="editor-field">
            <%: Html.TextBoxFor(model => model.Descricao, new { Width = 200, MaxLength = 150 })%>
            <%: Html.ValidationMessageFor(model => model.Descricao) %>
        </div>

        <p>
            <input type="submit" value="<%: Models.App_GlobalResources.Mensagem.editar %>" />
        </p>
    </fieldset>
<% } %>

<div>
    <%: Html.ActionLink(Models.App_GlobalResources.Mensagem.voltar, "Index") %>
</div>

</asp:Content>
