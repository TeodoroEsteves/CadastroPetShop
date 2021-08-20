using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CadastroPetShop
{
    public partial class petShop : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {
            char sexo = ' ';

            if (rbMacho.Checked)
            {
                sexo = 'F';
            }
            else if (rbFemea.Checked)
            {
                sexo = 'M';
            }

            string comando = $@"insert into caes (nome, 
                             peso, raca, sexo, data_nascimento, cadastrado, porte)
                             values ('{txtNome.Text}', {txtPeso.Text}, 
                             '{txtRaça.Text}', '{sexo}', '{txtData.Text}', {cbCadastrado.Checked}, 
                             '{ddlPet.SelectedValue}')";

            ConexaoMySql.ComandoSemRetorno(comando);
            Response.Redirect(Request.RawUrl);
        }
    }
}