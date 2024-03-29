﻿using System.Collections.Generic;
using System.Linq;
using Models;
using Persistence;

namespace Services
{
    /// <summary>
    /// Gerencia todas as regras de negócio da entidade Bloco
    /// </summary>

    public class GerenciadorBloco
    {
        private static GerenciadorBloco gBloco;

        private IUnitOfWork unitOfWork;
        private bool shared;

        public static GerenciadorBloco GetInstance()
        {
            if (gBloco == null)
            {
                gBloco = new GerenciadorBloco();
            }
            return gBloco;
        }

        /// <summary>
        /// Construtor pode ser acessado externamente e não compartilha contexto
        /// </summary>
        public GerenciadorBloco()
        {
            this.unitOfWork = new UnitOfWork();
            shared = false;
        }

        /// <summary>
        /// Construtor acessado apenas dentro do componentes service e permite compartilhar
        /// contexto com outras classes de negócio
        /// </summary>
        /// <param name="unitOfWork">Interface que cria os repositórios</param>
        internal GerenciadorBloco(IUnitOfWork unitOfWork)
        {
            this.unitOfWork = unitOfWork;
            shared = true;
        }

        /// <summary>
        /// Insere um novo na base de dados
        /// </summary>
        /// <param name="blocoModel">Dados do modelo</param>
        /// <returns>Chave identificante na base</returns>
        public int Inserir(BlocoModel blocoModel)
        {
            tb_bloco blocoE = new tb_bloco();
            Atribuir(blocoModel, blocoE);
            unitOfWork.RepositorioBloco.Inserir(blocoE);
            unitOfWork.Commit(shared);
            return blocoE.IdBloco;
        }

        /// <summary>
        /// Altera dados na base de dados
        /// </summary>
        /// <param name="blocoModel">Dados do modelo</param>
        public void Editar(BlocoModel blocoModel)
        {
            tb_bloco blocoE = new tb_bloco();
            Atribuir(blocoModel, blocoE);
            unitOfWork.RepositorioBloco.Editar(blocoE);
            unitOfWork.Commit(shared);
        }

        /// <summary>
        /// Remove da base de dados
        /// </summary>
        /// <param name="blocoModel">Identificador do bloco na base de dados</param>
        public void Remover(int idBloco)
        {
            unitOfWork.RepositorioBloco.Remover(bloco => bloco.IdBloco.Equals(idBloco));
            unitOfWork.Commit(shared);
        }


        /// <summary>
        /// Consulta padrão para retornar dados do bloco como model
        /// </summary>
        /// <returns></returns>
        private IQueryable<BlocoModel> GetQuery()
        {
            IQueryable<tb_bloco> tb_bloco = unitOfWork.RepositorioBloco.GetQueryable();
            var query = from bloco in tb_bloco
                        select new BlocoModel
                        {
                            IdBloco = bloco.IdBloco,
                            IdCondominio = bloco.IdCondominio,
                            NomeCondominio = bloco.tb_condominio.Nome,
                            Nome = bloco.Nome,
                            QuantidadeAndares = bloco.QuantidadeAndares,
                            QuantidadeMoradias = bloco.QuantidadeMoradias


                        };
            return query;
        }


        /// <summary>
        /// Obter todos as entidades cadastradas
        /// </summary>
        /// <returns></returns>
        public IEnumerable<BlocoModel> ObterTodos()
        {
            return GetQuery();
        }

        /// <summary>
        /// Obtém um bloco
        /// </summary>
        /// <param name="idBloco">Identificador do bloco na base de dados</param>
        /// <returns>Bloco model</returns>
        public BlocoModel Obter(int idBloco)
        {
            IEnumerable<BlocoModel> blocoEs = GetQuery().Where(blocoModel => blocoModel.IdBloco.Equals(idBloco));
            return blocoEs.ElementAtOrDefault(0);
        }

        /// <summary>
        /// Obtém um bloco
        /// </summary>
        /// <param name="idBloco">Identificador do bloco na base de dados</param>
        /// <returns>Bloco model</returns>
        public IEnumerable<BlocoModel> ObterPorCondominio(int idCondominio)
        {
            IEnumerable<BlocoModel> blocoEs = GetQuery().Where(blocoModel => blocoModel.IdCondominio.Equals(idCondominio));
            return blocoEs;
        }


        /// <summary>
        /// Atribui dados do Bloco Model para o Bloco Entity
        /// </summary>
        /// <param name="blocoModel">Objeto do modelo</param>
        /// <param name="blocoE">Entity mapeada da base de dados</param>
        private void Atribuir(BlocoModel blocoModel, tb_bloco blocoE)
        {
            blocoE.IdBloco = blocoModel.IdBloco;
            blocoE.IdCondominio = blocoModel.IdCondominio;
            blocoE.Nome = blocoModel.Nome;
            blocoE.QuantidadeAndares = blocoModel.QuantidadeAndares;
            blocoE.QuantidadeMoradias = blocoModel.QuantidadeMoradias;
        }
    }
}
