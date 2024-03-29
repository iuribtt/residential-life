﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Models.RegistrarOcorrenciaModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Delete
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2><%: Models.App_GlobalResources.Mensagem.apargarRegistroOcorrencia%></h2>

<h3><%: Models.App_GlobalResources.Mensagem.perguntaConfirmacao %></h3>
<fieldset>
    <legend><%: Models.App_GlobalResources.Mensagem.apagar %></legend>

    <div class="display-label">IdOcorrencia</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.IdOcorrencia) %>
    </div>

    <div class="display-label">IdPessoa</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.IdPessoa) %>
    </div>

    <div class="display-label">Titulo</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Titulo) %>
    </div>

    <div class="display-label">Descricao</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Descricao) %>
    </div>

    <div class="display-label">Data</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Data) %>
    </div>

    <div class="display-label">Tipo</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Tipo) %>
    </div>

    <div class="display-label">Status</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Status) %>
    </div>
</fieldset>
<% using (Html.BeginForm()) { %>
    <p>
        <input type="submit" value=<%: Models.App_GlobalResources.Mensagem.apagar %> /> |
        <%: Html.ActionLink(Models.App_GlobalResources.Mensagem.voltar, "Index")%>
    </p>
<% } %>

</asp:Content>
