﻿using System.Web.Mvc;

namespace BibliotecaWeb
{
    
    
    public class ReservaAmbienteController : Controller
    {
        /*
        private GerenciadorReservaAmbiente gReservaAmbiente;
        private GerenciadorAreaPublica gAreaPublica;
        private GerenciadorStatusPagamento gStatusPagamento;
        private GerenciadorPessoa gPessoa;

        public ReservaAmbienteController()
        {
            gReservaAmbiente = new GerenciadorReservaAmbiente();
            gAreaPublica = new GerenciadorAreaPublica();
            gStatusPagamento = new GerenciadorStatusPagamento();
            gPessoa = new GerenciadorPessoa();
        }

        //
        // GET: /ReservaAmbiente/

       
        public ViewResult Index()
        {
            int idPessoa = gPessoa.ObterPorUsername(Membership.GetUser(true).UserName).IdPessoa;
            return View(gReservaAmbiente.ObterTodosPorPessoa(idPessoa));
        }

        //
        // GET: /ReservaAmbiente/Details/5

        [Authorize(Roles = "Morador")]
        [Authorize(Roles = "Síndico")]
        public ViewResult Details(int id)
        {
            ReservaAmbienteModel reservaAmbiente = gReservaAmbiente.Obter(id);
            return View(reservaAmbiente);
        }

        //
        // GET: /ReservaAmbiente/Create

        [Authorize(Roles = "Morador")]
        public ActionResult Create()
        {
            //Pegar somente as áreas públicas do condomínio corrente no futuro
            ViewBag.IdAreaPublica = new SelectList(gAreaPublica.ObterTodos(), "IdAreaPublica", "Nome");
            ViewBag.IdStatusPagamento = new SelectList(gStatusPagamento.ObterTodos(), "IdStatusPagamento", "StatusPagamento");
            return View();
        }

        //
        // POST: /ReservaAmbiente/Create

        [HttpPost]
        public ActionResult Create(ReservaAmbienteModel reservaAmbienteModel)
        {
            reservaAmbienteModel.IdPesssoa = gPessoa.ObterPorUsername(Membership.GetUser(true).UserName).IdPessoa;
            if (ModelState.IsValid)
            {
                gReservaAmbiente.Inserir(reservaAmbienteModel);
                return RedirectToAction("Index");
            }

            return View(reservaAmbienteModel);
        }

        //
        // GET: /ReservaAmbiente/Edit/5

        [Authorize(Roles = "Morador")]
        public ActionResult Edit(int id)
        {
            ReservaAmbienteModel reservaAmbiente = gReservaAmbiente.Obter(id);
            ViewBag.IdAreaPublica = new SelectList(gAreaPublica.ObterTodos(), "IdAreaPublica", "Nome", reservaAmbiente.IdAreaPublica);
            ViewBag.IdStatusPagamento = new SelectList(gStatusPagamento.ObterTodos(), "IdStatusPagamento", "StatusPagamento", reservaAmbiente.IdStatusPagamento);
            return View(reservaAmbiente);
        }

        //
        // POST: /ReservaAmbiente/Edit/5

        [HttpPost]
        public ActionResult Edit(ReservaAmbienteModel reservaAmbienteModel)
        {
            if (ModelState.IsValid)
            {
                gReservaAmbiente.Editar(reservaAmbienteModel);
                return RedirectToAction("Index");
            }
            
            return View(reservaAmbienteModel);
        }

        //
        // GET: /ReservaAmbiente/Delete/5

        [Authorize(Roles = "Morador")]
        public ActionResult Delete(int id)
        {
            ReservaAmbienteModel reservaAmbienteModel = gReservaAmbiente.Obter(id);
            return View(reservaAmbienteModel);
        }

        //
        // POST: /ReservaAmbiente/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            gReservaAmbiente.Remover(id);
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            base.Dispose(disposing);
        }

        
        public ActionResult RelatorioReservasPorData()
        {
            LocalReport relatorio = new LocalReport();

            //Caminho onde o arquivo do Report Viewer está localizado
            relatorio.ReportPath = Server.MapPath("~/Relatorios/ReportListaReservasPorData.rdlc");
            //Define o nome do nosso DataSource e qual rotina irá preenche-lo, no caso, nosso método criado anteriormente
            relatorio.DataSources.Add(new ReportDataSource("DataSetReservasPorData", gReservaAmbiente.ObterTodos()));

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
