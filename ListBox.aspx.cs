using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ListBox : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        int input;
        lblCountryMsg.Text = "";
        lblCodeMsg.Text = "";
        lblSubmit.Text = "";
        if (txtCountry.Text.Trim() == "" && txtCode.Text.Trim() == "")
        {
            lblCountryMsg.Text = "Please enter a Country";
            lblCodeMsg.Text = "Please enter a Code";
        }
        else if (txtCountry.Text.Trim() == "")
        {
            lblCountryMsg.Text = "Please enter a Country";
        }
        else if (txtCode.Text.Trim() == "")
        {
            lblCodeMsg.Text = "Please enter a code";
        }
        else if (!int.TryParse(txtCode.Text.Trim(), out input))
        {
            lblCodeMsg.Text = "Please enter valid code";
        }
        else
        {
            bool flag = true;
            if (btnSubmit.Text.Trim() == "Submit")
            {
                if (lstb1.Items.Count == 0)
                {
                    lstb1.Items.Insert(0, new ListItem("yoyo"));
                    foreach (ListItem li in lstb1.Items)
                    {
                        if (txtCountry.Text.Trim() == li.Text.Trim() && txtCode.Text.Trim() == li.Value.Trim())
                        {
                            flag = false;
                            break;
                        }
                    }
                    foreach (ListItem li in lstb2.Items)
                    {
                        if (txtCountry.Text.Trim() == li.Text.Trim() && txtCode.Text.Trim() == li.Value.Trim())
                        {
                            flag = false;
                            break;
                        }
                    }
                    lstb1.Items.RemoveAt(0);
                }
                else
                {
                    foreach (ListItem li in lstb1.Items)
                    {
                        if (txtCountry.Text.Trim() == li.Text.Trim() && txtCode.Text.Trim() == li.Value.Trim())
                        {
                            flag = false;
                            break;
                        }
                    }
                    foreach (ListItem li in lstb2.Items)
                    {
                        if (txtCountry.Text.Trim() == li.Text.Trim() && txtCode.Text.Trim() == li.Value.Trim())
                        {
                            flag = false;
                            break;
                        }
                    }
                }

                if (flag)
                {
                    lstb1.Items.Add(new ListItem(txtCountry.Text.Trim(), txtCode.Text.Trim())); // Here we create anonymous object of ListItem, which have four counstructer, So we use one of these counstructer which is take first argument "Text" and seconde argument "Value" proparty of ListItem.
                }
                else
                {
                    lblSubmit.Text = "Country already exist";
                }

            }
            else
            {
                foreach (ListItem li in lstb1.Items)
                {
                    if (txtCountry.Text.Trim() == li.Text.Trim() && txtCode.Text.Trim() == li.Value.Trim())
                    {
                        flag = false;
                        break;
                    }
                }
                foreach (ListItem li in lstb2.Items)
                {
                    if (txtCountry.Text.Trim() == li.Text.Trim() && txtCode.Text.Trim() == li.Value.Trim())
                    {
                        flag = false;
                        break;
                    }
                }
                if (flag)
                {
                    int index = lstb1.Items.IndexOf(lstb1.SelectedItem);
                    lstb1.Items.Remove(lstb1.SelectedItem);
                    lstb1.Items.Insert(index, new ListItem(txtCountry.Text.Trim(), txtCode.Text.Trim()));
                    btnSubmit.Text = "Submit";
                }
                else
                {
                    lblSubmit.Text = "Country already exist";
                }

            }
            txtCountry.Text = "";
            txtCode.Text = "";

        }


    }
    protected void btnRemove_Click(object sender, EventArgs e)
    {
        int input;
        lblCountryMsg.Text = "";
        lblCodeMsg.Text = "";
        if (txtCountry.Text.Trim() == "" && txtCode.Text.Trim() == "")
        {
            lblCountryMsg.Text = "Please enter a Country";
            lblCodeMsg.Text = "Please enter a Code";
        }
        else if (txtCountry.Text.Trim() == "")
        {
            lblCountryMsg.Text = "Please enter a Country";
        }
        else if (txtCode.Text.Trim() == "")
        {
            lblCodeMsg.Text = "Please enter a Code";
        }
        else if (!int.TryParse(txtCode.Text.Trim(), out input))
        {
            lblCodeMsg.Text = "Please enter valid code";
        }
        else
        {
            bool flag = false;
            foreach (ListItem li in lstb1.Items)
            {
                if (txtCountry.Text.Trim() == li.Text.Trim() && txtCode.Text.Trim() == li.Value.Trim())
                {
                    lstb1.Items.Remove(li);
                    flag = true;
                    break;
                }

            }
            if (!flag)
            {
                //lblDropdown.Text = "Country not found";
            }
        }


    }
    protected void btnRight_Click(object sender, EventArgs e)
    {
        /*for (int i = 0; i < lstb1.Items.Count; i++)
        {
            if(lstb1.Items.IndexOf(i).)
        }*/
        lblSubmit.Text = lstb1.SelectedItem.Text;
    }
    protected void btnLeft_Click(object sender, EventArgs e)
    {
        foreach (ListItem li in lstb2.Items)
        {
            if (li.Selected)
            {
                lstb1.Items.Add(li);
                lstb2.Items.Remove(li);
            }
        }
    }
    protected void btnAllRight_Click(object sender, EventArgs e)
    {
        foreach (ListItem li in lstb1.Items)
        {
            lstb2.Items.Add(li);
        }
        lstb1.Items.Clear();
    }
    protected void btnAllLeft_Click(object sender, EventArgs e)
    {
        foreach (ListItem li in lstb2.Items)
        {
            lstb1.Items.Add(li);
        }
        lstb2.Items.Clear();
    }
}