﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Models.PostagemModel>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    <%:Models.App_GlobalResources.Mensagem.postagens%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>
        <%:Models.App_GlobalResources.Mensagem.postagens%></h2>
    <p>
        <%: Html.ActionLink(Models.App_GlobalResources.Mensagem.novo, "Create")%>
    </p>
    <table id="table">
        <tr>
            <th>
                <%: Models.App_GlobalResources.Mensagem.nomePessoa %>
            </th>
            <th>
                <%: Models.App_GlobalResources.Mensagem.titulo %>
            </th>
            <th>
                <%: Models.App_GlobalResources.Mensagem.descricao %>
            </th>
            <th>
                <%: Models.App_GlobalResources.Mensagem.dataInicio %>
            </th>
            <th>
                <%: Models.App_GlobalResources.Mensagem.dataFim %>
            </th>
            <th>
            </th>
        </tr>
        <% foreach (var item in Model)
           { %>
        <tr>
            <td>
                <%: Html.DisplayFor(modelItem => item.NomePessoa) %>
            </td>
            <td>
                <%: Html.DisplayFor(modelItem => item.Titulo) %>
            </td>
            <td>
                <%: Html.DisplayFor(modelItem => item.Descricao) %>
            </td>
            <td>
                <%: Html.DisplayFor(modelItem => item.DataPublicacao) %>
            </td>
            <td>
                <%: Html.DisplayFor(modelItem => item.DataExclusao) %>
            </td>
            <td>
                <%: Html.ActionLink(Models.App_GlobalResources.Mensagem.detalhes, "Details", new { id = item.IdPostagem })%>
                |
            </td>
        </tr>
        <% } %>
    </table>
</asp:Content>
