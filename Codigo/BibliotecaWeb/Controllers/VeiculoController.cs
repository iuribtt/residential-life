﻿using System.Web.Mvc;
using Models;
using Services;

namespace BibliotecaWeb
{
    public class VeiculoController : Controller
    {
        private GerenciadorVeiculo gVeiculo;
        private GerenciadorPessoaMoradia gPessoaMoradia;
        private GerenciadorMoradia gMoradia;
        private GerenciadorCondominio gCondominio;
        private GerenciadorBloco gBloco;

        public VeiculoController()
        {
            gVeiculo = new GerenciadorVeiculo();
            gPessoaMoradia = new GerenciadorPessoaMoradia();
            gMoradia = new GerenciadorMoradia();
            gCondominio = new GerenciadorCondominio();
            gBloco = new GerenciadorBloco();
        }


        //
        // GET: /Veiculo/

        public ActionResult Index()
        {
            return View(gVeiculo.ObterTodos());
        }

        //
        // GET: /Veiculo/Create
        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /Veiculo/Create
        [HttpPost]
        public ActionResult Create(VeiculoModel veiculoModel)
        {
            veiculoModel.IdMoradia = SessionController.PessoaMoradia.IdMoradia;
            if (ModelState.IsValid)
            {
                veiculoModel.IdPessoa = SessionController.PessoaMoradia.IdPessoa;
                gVeiculo.Inserir(veiculoModel);
                return RedirectToAction("Index");
            }
            return View(veiculoModel);
        }

        //
        // GET: /pessoa/Details/5
        public ViewResult Details(int id)
        {
            VeiculoModel veiculo = gVeiculo.Obter(id);
            return View(veiculo);
        }

        //
        // GET: /Veiculo/Edit/5
        public ActionResult Edit(int id)
        {
            VeiculoModel veiculo = gVeiculo.Obter(id);
            return View(veiculo);
        }

        //
        // POST: /Veiculo/Edit/5
        [HttpPost]
        public ActionResult Edit(VeiculoModel veiculoModel)
        {
            if (ModelState.IsValid)
            {
                //veiculoModel.IdPessoa = SessionController.Pessoa.IdPessoa;
                gVeiculo.Editar(veiculoModel);
                return RedirectToAction("Index");
            }
            return View(veiculoModel);
        }

        //
        // GET: /Veiculo/Delete/5
        public ActionResult Delete(int id)
        {
            VeiculoModel veiculoModel = gVeiculo.Obter(id);
            return View(veiculoModel);
        }

        //
        // POST: /Veiculo/Delete/5
        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            GerenciadorVeiculo.GetInstance().Remover(id);
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            base.Dispose(disposing);
        }

        /*
        public ActionResult RelatorioVeiculosPorPessoa()
        {
            LocalReport relatorio = new LocalReport();

            //Caminho onde o arquivo do Report Viewer está localizado
            relatorio.ReportPath = Server.MapPath("~/Relatorios/ReportListaVeiculosPorPessoa.rdlc");
            //Define o nome do nosso DataSource e qual rotina irá preenche-lo, no caso, nosso método criado anteriormente
            relatorio.DataSources.Add(new ReportDataSource("DataSetVeiculos", gVeiculo.ObterTodos()));

            string reportType = "PDF";
            string mimeType;
            string encoding;
            string fileNameExtension;

            string deviceInfo =
             "<DeviceInfo>" +
             " <OutputFormat>PDF</OutputFormat>" +
             " <PageWidth>9in</PageWidth>" +
             " <PageHeight>11in</PageHeight>" +
             " <MarginTop>0.7in</MarginTop>" +
             " <MarginLeft>2in</MarginLeft>" +
             " <MarginRight>2in</MarginRight>" +
             " <MarginBottom>0.7in</MarginBottom>" +
             "</DeviceInfo>";

            Warning[] warnings;
            string[] streams;
            byte[] bytes;

            //Renderiza o relatório em bytes
            bytes = relatorio.Render(
            reportType,
            deviceInfo,
            out mimeType,
            out encoding,
            out fileNameExtension,
            out streams,
            out warnings);

            return File(bytes, mimeType);

        }

        public ActionResult RelatorioVeiculos()
        {
            LocalReport relatorio = new LocalReport();

            //Caminho onde o arquivo do Report Viewer está localizado
            relatorio.ReportPath = Server.MapPath("~/Relatorios/ReportListaVeiculos.rdlc");
            //Define o nome do nosso DataSource e qual rotina irá preenche-lo, no caso, nosso método criado anteriormente
            relatorio.DataSources.Add(new ReportDataSource("DataSetVeiculos", gVeiculo.ObterTodos()));

            string reportType = "PDF";
            string mimeType;
            string encoding;
            string fileNameExtension;

            string deviceInfo =
             "<DeviceInfo>" +
             " <OutputFormat>PDF</OutputFormat>" +
             " <PageWidth>9in</PageWidth>" +
             " <PageHeight>11in</PageHeight>" +
             " <MarginTop>0.7in</MarginTop>" +
             " <MarginLeft>2in</MarginLeft>" +
             " <MarginRight>2in</MarginRight>" +
             " <MarginBottom>0.7in</MarginBottom>" +
             "</DeviceInfo>";

            Warning[] warnings;
            string[] streams;
            byte[] bytes;

            //Renderiza o relatório em bytes
            bytes = relatorio.Render(
            reportType,
            deviceInfo,
            out mimeType,
            out encoding,
            out fileNameExtension,
            out streams,
            out warnings);

            return File(bytes, mimeType);

        } */
    }
}
