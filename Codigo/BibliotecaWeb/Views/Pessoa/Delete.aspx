﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Models.PessoaModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Delete
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Deletar</h2>

<h3>Tem certeza que deseja deletar esta pessoa?</h3>
<fieldset>
    <legend><%: Models.App_GlobalResources.Mensagem.apagar %></legend>

    <div class="display-label">Código</div>
    <div class="display-field">
        <%: Html.LabelFor(model => model.IdPes) %>
    </div>

    <div class="display-label">Nome</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Nome) %>
    </div>

    <div class="display-label">CPF</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.CPF) %>
    </div>

    <div class="display-label">RG</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.RG) %>
    </div>

    <div class="display-label">Sexo</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Sexo) %>
    </div>

    <div class="display-label">Email</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Email) %>
    </div>

    <div class="display-label">Login</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Login) %>
    </div>

    <div class="display-label">Senha</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Senha) %>
    </div>

    <div class="display-label">Telefone Fixo</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.TelefoneFixo) %>
    </div>

    <div class="display-label">Telefone Celular</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.TelefoneCelular) %>
    </div>

    <div class="display-label">Rua</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Rua) %>
    </div>

    <div class="display-label">Numero</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Numero) %>
    </div>

    <div class="display-label">Complemento</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Complemento) %>
    </div>

    <div class="display-label">Bairro</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Bairro) %>
    </div>

    <div class="display-label">CEP</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.CEP) %>
    </div>

    <div class="display-label">Cidade</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Cidade) %>
    </div>

    <div class="display-label">Estado</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Estado) %>
    </div>

</fieldset>
<% using (Html.BeginForm()) { %>
    <p>
        <input type="submit" value="Delete" /> |
        <%: Html.ActionLink("Voltar para lista", "Index") %>
    </p>
<% } %>

</asp:Content>
