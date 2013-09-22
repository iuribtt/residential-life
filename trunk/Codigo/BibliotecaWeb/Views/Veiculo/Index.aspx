﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Models.Models.VeiculoModel>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    <%: Models.App_GlobalResources.Mensagem.veiculos %>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2><%: Models.App_GlobalResources.Mensagem.veiculos %></h2>

<p>
    <%: Html.ActionLink( Models.App_GlobalResources.Mensagem.novo, "Create") %>
</p>
<table>
    <tr>
        <th>
            <%: Models.App_GlobalResources.Mensagem.idPessoa %>
        </th>
        <th>
            <%: Models.App_GlobalResources.Mensagem.placa %>
        </th>
        <th>
            <%: Models.App_GlobalResources.Mensagem.modelo %>
        </th>
        <th>
            <%: Models.App_GlobalResources.Mensagem.cor %>
        </th>
        <th>
            <%: Models.App_GlobalResources.Mensagem.tipoVeiculo %>
        </th>
        <th></th>
    </tr>

<% foreach (var item in Model) { %>
    <tr>
        <td>
            <%: Html.DisplayFor(modelItem => item.IdPessoa) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Placa) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Modelo) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Cor) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Tipo) %>
        </td>
        <td>
            <%: Html.ActionLink( Models.App_GlobalResources.Mensagem.editar , "Edit", new {  id=item.IdVeiculo }) %> |
            <%: Html.ActionLink(Models.App_GlobalResources.Mensagem.detalhes, "Details", new { id = item.IdVeiculo })%> |
            <%: Html.ActionLink(Models.App_GlobalResources.Mensagem.apagar, "Delete", new { id = item.IdVeiculo })%>
        </td>
    </tr>
<% } %>

</table>

</asp:Content>