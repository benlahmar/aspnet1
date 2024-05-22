using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ModuleForm : System.Web.UI.Page
{
    isgagroupe1Entities1 em=new isgagroupe1Entities1();
    protected void Page_Load(object sender, EventArgs e)
    {
        GridView1.DataSource = em.ModuleSet1.ToList();
        GridView1.DataBind();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        ModuleSet m=new ModuleSet();
        m.Id = Int32.Parse(TextBox1.Text);
        m.intitule = TextBox2.Text;
        m.coiff = double.Parse(TextBox3.Text);

        em.ModuleSet1.Add(m);
        em.SaveChanges();


        GridView1.DataSource = em.ModuleSet1.ToList();
        GridView1.DataBind();

    }
}