using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ListBox : System.Web.UI.Page
{
    string liText;
    string liValue;
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
                    txtCountry.Text = "";
                    txtCode.Text = "";
                    lblSubmit.Text = "";
                }
                else
                {
                    lblSubmit.Text = "Country already exist";
                }

            }
            else
            {
                

            }
            

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
            string tempList = null;
            int index = -1;
            bool flag = false;
            foreach (ListItem li in lstb1.Items)
            {
                if (txtCountry.Text.Trim() == li.Text.Trim() && txtCode.Text.Trim() == li.Value.Trim())
                {
                    index = lstb1.Items.IndexOf(li);
                    flag = true;
                    tempList = "left";
                    break;
                }
            }
            foreach (ListItem li in lstb2.Items)
            {
                if (txtCountry.Text.Trim() == li.Text.Trim() && txtCode.Text.Trim() == li.Value.Trim())
                {
                    index = lstb2.Items.IndexOf(li);
                    flag = true;
                    tempList = "right";
                    break;
                }
            }
            if (flag)
            {
                if (tempList == "left")
                {
                    lstb1.Items.RemoveAt(index);
                }
                else
                {
                    lstb2.Items.RemoveAt(index);
                }

                txtCountry.Text = "";
                txtCode.Text = "";
                txtUpdateCountry.Text = "";
                txtUpdateCode.Text = "";
                lblSubmit.Text = "";
            }
            else
            {
                lblSubmit.Text = "Country not found";
            }

        }


    }
    protected void btnRight_Click(object sender, EventArgs e)
    {
        foreach (ListItem li in lstb1.Items)
        {
            if (li.Selected)
            {
                lstb2.Items.Add(li);
            }
        }
        foreach (ListItem li in lstb2.Items)
        {
            if (li.Selected)
            {
                lstb1.Items.Remove(li);
            }
        }
    }
    protected void btnLeft_Click(object sender, EventArgs e)
    {
        foreach (ListItem li in lstb2.Items)
        {
            if (li.Selected)
            {
                lstb1.Items.Add(li);
            }
        }
        foreach (ListItem li in lstb1.Items)
        {
            if (li.Selected)
            {
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

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        lblCountryMsg.Text = "";
        lblCodeMsg.Text = "";
        lblNewCountryMsg.Text = "";
        lblNewCodeMsg.Text = "";
        if (txtCountry.Text.Trim() == "" && txtCode.Text.Trim() == "" && txtUpdateCountry.Text.Trim() == "" && txtUpdateCode.Text.Trim() == "")
        {
            lblCountryMsg.Text = "Please enter a Country";
            lblCodeMsg.Text = "Please enter a Code";
            lblNewCountryMsg.Text = "Please enter a Country";
            lblNewCodeMsg.Text = "Please enter a Code";
        }
        else if (txtCountry.Text.Trim() == "" && txtCode.Text.Trim() == "" && txtUpdateCountry.Text.Trim() == "")
        {
            lblCountryMsg.Text = "Please enter a Country";
            lblCodeMsg.Text = "Please enter a Code";
            lblNewCountryMsg.Text = "Please enter a Country";
        }
        else if (txtCountry.Text.Trim() == "" && txtCode.Text.Trim() == "" && txtUpdateCode.Text.Trim() == "")
        {
            lblCountryMsg.Text = "Please enter a Country";
            lblCodeMsg.Text = "Please enter a Code";
            lblNewCodeMsg.Text = "Please enter a Code";
        }
        else if (txtCountry.Text.Trim() == "" && txtUpdateCountry.Text.Trim() == "" && txtUpdateCode.Text.Trim() == "")
        {
            lblCountryMsg.Text = "Please enter a Country";
            lblNewCountryMsg.Text = "Please enter a Country";
            lblNewCodeMsg.Text = "Please enter a Code";
        }
        else if (txtCode.Text.Trim() == "" && txtUpdateCountry.Text.Trim() == "" && txtUpdateCode.Text.Trim() == "")
        {
            lblCodeMsg.Text = "Please enter a Code";
            lblNewCountryMsg.Text = "Please enter a Country";
            lblNewCodeMsg.Text = "Please enter a Code";
        }
        else if (txtCountry.Text.Trim() == "" && txtCode.Text.Trim() == "")
        {
            lblCountryMsg.Text = "Please enter a Country";
            lblCodeMsg.Text = "Please enter a Code";
        }
        else if(txtCountry.Text.Trim() == "" && txtUpdateCountry.Text.Trim() == "")
        {
            lblCountryMsg.Text = "Please enter a Country";
            lblNewCountryMsg.Text = "Please enter a Country";
        }
        else if (txtCountry.Text.Trim() == "" && txtUpdateCode.Text.Trim() == "")
        {
            lblCountryMsg.Text = "Please enter a Country";
            lblNewCodeMsg.Text = "Please enter a Code";
        }
        else if (txtCode.Text.Trim() == "" && txtUpdateCountry.Text.Trim() == "")
        {
            lblCodeMsg.Text = "Please enter a Code";
            lblNewCountryMsg.Text = "Please enter a Country";
        }
        else if (txtCode.Text.Trim() == "" && txtUpdateCode.Text.Trim() == "")
        {
            lblCodeMsg.Text = "Please enter a Code";
            lblNewCodeMsg.Text = "Please enter a Code";
        }
        else if (txtUpdateCountry.Text.Trim() == "" && txtUpdateCode.Text.Trim() == "")
        {
            lblNewCountryMsg.Text = "Please enter a Country";
            lblNewCodeMsg.Text = "Please enter a Code";
        }
        else if (txtCountry.Text.Trim() == "")
        {
            lblCountryMsg.Text = "Please enter a Country";
        }
        else if (txtCode.Text.Trim() == "")
        {
            lblCodeMsg.Text = "Please enter a code";
        }
        else if (txtUpdateCountry.Text.Trim() == "")
        {
            lblNewCountryMsg.Text = "Please enter a Country";
        }
        else if (txtUpdateCode.Text.Trim() == "")
        {
            lblNewCodeMsg.Text = "Please enter a code";
        }
        else
        {
            string tempList = null;
            int index = -1;
            bool flag = false;
            foreach (ListItem li in lstb1.Items)
            {
                if (txtCountry.Text.Trim() == li.Text.Trim() && txtCode.Text.Trim() == li.Value.Trim())
                {
                    index = lstb1.Items.IndexOf(li);
                    flag = true;
                    tempList = "left";
                    break;
                }
            }
            foreach (ListItem li in lstb2.Items)
            {
                if (txtCountry.Text.Trim() == li.Text.Trim() && txtCode.Text.Trim() == li.Value.Trim())
                {
                    index = lstb2.Items.IndexOf(li);
                    flag = true;
                    tempList = "right";
                    break;
                }
            }
            if (flag)
            {
                bool flag2 = true;
                foreach (ListItem li in lstb1.Items)
                {
                    if (txtUpdateCountry.Text.Trim() == li.Text.Trim() && txtUpdateCode.Text.Trim() == li.Value.Trim())
                    {
                        flag2 = false;
                        break;
                    }
                }
                foreach (ListItem li in lstb2.Items)
                {
                    if (txtUpdateCountry.Text.Trim() == li.Text.Trim() && txtUpdateCode.Text.Trim() == li.Value.Trim())
                    {
                        flag2 = false;
                        break;
                    }
                }
                if (flag2)
                {
                    if (tempList == "left")
                    {
                        lstb1.Items.RemoveAt(index);
                        lstb1.Items.Insert(index, new ListItem(txtUpdateCountry.Text.Trim(), txtUpdateCode.Text.Trim()));
                    }
                    else
                    {
                        lstb2.Items.RemoveAt(index);
                        lstb2.Items.Insert(index, new ListItem(txtUpdateCountry.Text.Trim(), txtUpdateCode.Text.Trim()));
                    }
                    
                    txtCountry.Text = "";
                    txtCode.Text = "";
                    txtUpdateCountry.Text = "";
                    txtUpdateCode.Text = "";
                    lblSubmit.Text = "";
                }
                else
                {
                    lblSubmit.Text = "Country already exist";
                }
                
            }
            else
            {
                lblSubmit.Text = "Country not found";
            }
        }
        
    }
}