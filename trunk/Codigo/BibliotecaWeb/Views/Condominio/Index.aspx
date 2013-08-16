﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Models.Models.CondominioModel>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Index</h2>

<p>
    <%: Html.ActionLink("Create New", "Create") %>
</p>
<table>
    <tr>
     
        <th>
            IDSindico
        </th>
        <th>
            Nome
        </th>
        <th>
            Rua
        </th>
        <th>
            Numero
        </th>
        <th>
            Bairro
        </th>
        <th>
            Complemento
        </th>
        <th>
            Cep
        </th>
        <th>
            Cidade
        </th>
        <th>
            Estado
        </th>
        <th></th>
    </tr>

<% foreach (var item in Model) { %>
    <tr>
     
        <td>
            <%: Html.DisplayFor(modelItem => item.IDSindico) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Nome) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Rua) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Numero) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Bairro) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Complemento) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Cep) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Cidade) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Estado) %>
        </td>
        <td>
            <%: Html.ActionLink("Edit", "Edit", new {  id=item.IDCondominio }) %> |
            <%: Html.ActionLink("Details", "Details", new {  id=item.IDCondominio  }) %> |
            <%: Html.ActionLink("Delete", "Delete", new {  id=item.IDCondominio }) %>
        </td>
    </tr>
<% } %>

</table>

</asp:Content>
