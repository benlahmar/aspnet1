using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class etudiant : System.Web.UI.Page
{
    isgagroupe1Entities1 db = new isgagroupe1Entities1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        refresh();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        
    }

    public void refresh()
    {
        GridView1.DataSource = db.Etudiant.ToList();
        GridView1.DataBind();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Etudiant et = new Etudiant();
        et.id = Int32.Parse(TextBox5.Text);
        et.nom = TextBox1.Text;
        et.prenom = TextBox2.Text;
        et.gender = DropDownList1.Text;
        et.date = DateTime.Parse(TextBox3.Text);
        et.photo = et.id+".png";
        FileUpload1.SaveAs(Server.MapPath("images/" + et.photo));
        Image1.ImageUrl = "images/" + et.photo;    
            
        db.Etudiant.Add(et);
        db.SaveChanges();

        refresh();
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        Label7.Text = e.NewEditIndex + "";
        GridView1.EditIndex = e.NewEditIndex;
        refresh();

    }

    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        refresh();
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int index = e.RowIndex;
       int id=  Int32.Parse( GridView1.Rows[index].Cells[4].Text);
        Etudiant et = db.Etudiant.Find(id);
        db.Etudiant.Remove(et);
        db.SaveChanges();
        refresh();
    }

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        int index = e.RowIndex;
        int id = Int32.Parse(((TextBox)GridView1.Rows[index].Cells[4].Controls[0]).Text);

        Etudiant et = db.Etudiant.Find(id);
        et.nom = ((TextBox)GridView1.Rows[index].Cells[5].Controls[0]).Text;
        
        db.SaveChanges();
        GridView1.EditIndex = -1;
        refresh();
    }
}