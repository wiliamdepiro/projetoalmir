﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CadastrarPessoa : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Page_PreRender(object sender, EventArgs e)
    {
        if (GridView1.SelectedRow == null)
        {
            DetailsView1.Visible = false;
        }
        else DetailsView1.Visible = true;
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void DetailsView1_ItemUpdated(object sender, DetailsViewUpdatedEventArgs e)
    {
        GridView1.DataBind();
        GridView1.SelectRow(-1);
    }

    protected void DetailsView1_ItemDeleted(object sender, DetailsViewDeletedEventArgs e)
    {
        GridView1.DataBind();
        GridView1.SelectRow(-1);
    }

    protected void DetailsView1_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
    {
        GridView1.DataBind();
        GridView1.SelectRow(-1);
    }

    protected void DetailsView1_ItemDeleted1(object sender, DetailsViewDeletedEventArgs e)
    {
        GridView1.DataBind();
        GridView1.SelectRow(-1);
    }

    protected void DetailsView1_ItemUpdated1(object sender, DetailsViewUpdatedEventArgs e)
    {
        GridView1.DataBind();
        GridView1.SelectRow(-1);
    }

    protected void DetailsView1_ItemInserted1(object sender, DetailsViewInsertedEventArgs e)
    {
        GridView1.DataBind();
        GridView1.SelectRow(-1);
    }

    protected void LinkButton4_Click(object sender, EventArgs e)
    {

    }
}