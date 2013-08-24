﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Models.Models.ReservaAmbienteModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Create
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Create</h2>

<script src="<%: Url.Content("~/Scripts/jquery.validate.min.js") %>" type="text/javascript"></script>
<script src="<%: Url.Content("~/Scripts/jquery.validate.unobtrusive.min.js") %>" type="text/javascript"></script>

<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>
    <fieldset>
        <legend>ReservaAmbienteModel</legend>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.IdRes) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.IdRes) %>
            <%: Html.ValidationMessageFor(model => model.IdRes) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.IdArea) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.IdArea) %>
            <%: Html.ValidationMessageFor(model => model.IdArea) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.IdPes) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.IdPes) %>
            <%: Html.ValidationMessageFor(model => model.IdPes) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.DataInicio) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.DataInicio) %>
            <%: Html.ValidationMessageFor(model => model.DataInicio) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.DataFim) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.DataFim) %>
            <%: Html.ValidationMessageFor(model => model.DataFim) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.StatusPagamento) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.StatusPagamento) %>
            <%: Html.ValidationMessageFor(model => model.StatusPagamento) %>
        </div>

        <p>
            <input type="submit" value="Create" />
        </p>
    </fieldset>
<% } %>

<div>
    <%: Html.ActionLink("Back to List", "Index") %>
</div>

</asp:Content>
