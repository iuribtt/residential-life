﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Models.Models.ReservaAmbienteModel>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    <%: Models.App_GlobalResources.Mensagem.reservasAmbiente %>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2><%: Models.App_GlobalResources.Mensagem.reservasAmbiente %></h2>

<p>
    <%: Html.ActionLink(Models.App_GlobalResources.Mensagem.novaReservaAmbiente, "Create") %>
</p>
<table id="table">
    <tr>
        <th>
            <%: Models.App_GlobalResources.Mensagem.id %>
        </th>
        <th>
            <%: Models.App_GlobalResources.Mensagem.areaPublica %>
        </th>
        <th>
            <%: Models.App_GlobalResources.Mensagem.dataInicio %>
        </th>
        <th>
            <%: Models.App_GlobalResources.Mensagem.dataFim %>
        </th>
        <th>
            <%: Models.App_GlobalResources.Mensagem.statusPagamento %>
        </th>
        <th></th>
    </tr>

<% foreach (var item in Model) { %>
    <tr>
        <td>
            <%: Html.DisplayFor(modelItem => item.IdReservaAmbiente) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.NomeAreaPublica) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.DataInicio) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.DataFim) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.StatusPagamento) %>
        </td>
        <td>
            <%: Html.ActionLink(Models.App_GlobalResources.Mensagem.editar, "Edit", new { id = item.IdReservaAmbiente })%> |
            <%: Html.ActionLink(Models.App_GlobalResources.Mensagem.detalhes, "Details", new { id = item.IdReservaAmbiente })%> |
            <%: Html.ActionLink(Models.App_GlobalResources.Mensagem.apagar, "Delete", new { id = item.IdReservaAmbiente })%>
        </td>
    </tr>
<% } %>

</table>

</asp:Content>
