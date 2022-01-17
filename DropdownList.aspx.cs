using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DropdownList : System.Web.UI.Page
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
        else if(!int.TryParse(txtCode.Text.Trim(),out input))
        {
            lblCodeMsg.Text = "Please enter valid code";
        }
        else
        {
            bool flag = true;
            if (btnSubmit.Text.Trim() == "Submit")
            {
                if (ddCountry.Items.Count == 0)
                {
                    ddCountry.Items.Insert(0, new ListItem("yoyo"));
                    foreach (ListItem li in ddCountry.Items)
                    {
                        if (txtCountry.Text.Trim() == li.Text.Trim() && txtCode.Text.Trim() == li.Value.Trim())
                        {
                            flag = false;
                            break;
                        }
                    }
                    ddCountry.Items.RemoveAt(0);
                }
                else
                {
                    foreach (ListItem li in ddCountry.Items)
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
                    ddCountry.Items.Add(new ListItem(txtCountry.Text.Trim(), txtCode.Text.Trim())); // Here we create anonymous object of ListItem, which have four counstructer, So we use one of these counstructer which is take first argument "Text" and seconde argument "Value" proparty of ListItem.
                    if (ddCountry.Items.Count == 1)
                    {
                        ddCountry.SelectedItem.Selected = false;
                    }
                }
                else
                {
                    lblSubmit.Text = "Country already exist";
                }
                
            }
            else
            {
                foreach (ListItem li in ddCountry.Items)
                {
                    if (txtCountry.Text.Trim() == li.Text.Trim() && txtCode.Text.Trim() == li.Value.Trim())
                    {
                        flag = false;
                        break;
                    }
                }
                if (flag)
                {
                    int index = ddCountry.Items.IndexOf(ddCountry.SelectedItem);
                    ddCountry.Items.Remove(ddCountry.SelectedItem);
                    ddCountry.Items.Insert(index, new ListItem(txtCountry.Text.Trim(), txtCode.Text.Trim()));
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
            foreach (ListItem li in ddCountry.Items)
            {
                if (txtCountry.Text.Trim() == li.Text.Trim() && txtCode.Text.Trim() == li.Value.Trim())
                {
                    ddCountry.Items.Remove(li);
                    flag = true;
                    break;
                }

            }
            if (!flag)
            {
                lblDropdown.Text = "Country not found";
            }
        }
        
        
    }
    protected void ddCountry_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtCode.Text = ddCountry.SelectedItem.Value;
        txtCountry.Text = ddCountry.SelectedItem.Text;
        btnSubmit.Text = "Update";
        lblSubmit.Text = "";
        
    }
}