﻿using System;
using Persistence;
using Models;
namespace Persistence
{
    public interface IUnitOfWork
    {
        void Commit(bool shared);
        IRepositorioGenerico<tb_pessoa> RepositorioPessoa { get; }
        IRepositorioGenerico<tb_condominio> RepositorioCondominio { get; }
        IRepositorioGenerico<tb_bloco> RepositorioBloco { get; }
    }
}