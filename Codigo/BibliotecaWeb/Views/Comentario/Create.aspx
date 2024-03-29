﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Models.ComentarioModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>
        <%:Models.App_GlobalResources.Mensagem.comentario%></h2>
    <script src="<%: Url.Content("~/Scripts/jquery.validate.min.js") %>" type="text/javascript"></script>
    <script src="<%: Url.Content("~/Scripts/jquery.validate.unobtrusive.min.js") %>"
        type="text/javascript"></script>
    <% using (Html.BeginForm())
       { %>
    <%: Html.ValidationSummary(true) %>
    <fieldset>
        <legend>
            <%:Models.App_GlobalResources.Mensagem.comentario%>
        </legend>
        <div class="editor-field">
            <%: Html.HiddenFor(model => model.IdPostagem) %>
        </div>
        <div class="editor-label">
            <%: Html.LabelFor(model => model.Comentario) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Comentario) %>
            <%: Html.ValidationMessageFor(model => model.Comentario) %>
        </div>
        <p>
            <input type="submit" value="<%: Models.App_GlobalResources.Mensagem.salvar %>" />
        </p>
    </fieldset>
    <% } %>
    <div><%: Html.ActionLink(Models.App_GlobalResources.Mensagem.voltar, "Index", "Postagem", null, new { @style = "font-size:small;" })%></div>
</asp:Content>
