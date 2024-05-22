using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class users11 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        isgagroupe1Entities2 ent = new isgagroupe1Entities2();
        User u = new User();
        u.Id = 5;
        u.nom = TextBox1.Text;
        u.photo = FileUpload1.FileName;
        u.invitrecive = null;
        u.invitsender = null;


        ent.UserSet.Add(u);
        ent.SaveChanges();
    }
}