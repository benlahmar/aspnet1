using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class moduleihm : System.Web.UI.Page
{
    isgagroupe1Entities1 em = new isgagroupe1Entities1();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack) {
            em.ModuleSet1.ToList().ForEach(m =>
            DropDownList1.Items.Add(m.intitule));

            em.Etudiant.ToList().ForEach(m => 
                DropDownList2.Items.Add(m.nom));
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        ExamenSet1 exam=new ExamenSet1();


        em.ExamenSet11.Add(exam);
    }
}