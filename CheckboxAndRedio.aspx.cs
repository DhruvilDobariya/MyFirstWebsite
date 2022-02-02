using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CheckboxAndRedio : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void rbDegree_CheckedChanged(object sender, EventArgs e)
    {
        lblSubmit.Text = "";
        rbCE.Visible = true;
        rbCV.Visible = true;
        rbME.Visible = true;
        rbEE.Visible = true;
        rbDCE.Visible = false;
        rbDCV.Visible = false;
        rbDME.Visible = false;
        rbDEE.Visible = false;
    }
    protected void rbDiploma_CheckedChanged(object sender, EventArgs e)
    {
        lblSubmit.Text = "";
        rbDCE.Visible = true;
        rbDCV.Visible = true;
        rbDME.Visible = true;
        rbDEE.Visible = true;
        rbCE.Visible = false;
        rbCV.Visible = false;
        rbME.Visible = false;
        rbEE.Visible = false;
    }
    protected void btnSubmit1_Click(object sender, EventArgs e)
    {
        if (rbDegree.Checked)
        {
            if (rbCE.Checked)
            {
                lblSubmit.Text = "You are selected Degree Computer Engineering";
            }
            else if (rbCV.Checked)
            {
                lblSubmit.Text = "You are selected Degree Civil Engineering";
            }
            else if (rbME.Checked)
            {
                lblSubmit.Text = "You are selected Degree Mechanical Engineering";
            }
            else if (rbEE.Checked)
            {
                lblSubmit.Text = "You are selected Degree Electric Engineering";
            }
            else
            {
                lblSubmit.Text = "Please select any Branch";
            }
        }
        else if (rbDiploma.Checked)
        {
            if (rbDCE.Checked)
            {
                lblSubmit.Text = "You are selected Deploma Computer Engineering";
            }
            else if (rbDCV.Checked)
            {
                lblSubmit.Text = "You are selected Deploma Civil Engineering";
            }
            else if (rbDME.Checked)
            {
                lblSubmit.Text = "You are selected Deploma Mechanical Engineering";
            }
            else if (rbDEE.Checked)
            {
                lblSubmit.Text = "You are selected Deploma Electric Engineering";
            }
            else
            {
                lblSubmit.Text = "Please select any Branch";
            }
        }
        else
        {
            lblSubmit.Text = "Please select any Department";
        }
    }
    protected void chkDegree_CheckedChanged(object sender, EventArgs e)
    {
        lblSubmitChk.Text = "";
        if (chkDegree.Checked && chkAll.Checked)
        {
            chkCE.Visible = true;
            chkCV.Visible = true;
            chkME.Visible = true;
            chkEE.Visible = true;
            chkAll.Visible = true;
            chkCE.Checked = true;
            chkCV.Checked = true;
            chkME.Checked = true;
            chkEE.Checked = true;
        }
        else if (chkDegree.Checked)
        {
            chkCE.Visible = true;
            chkCV.Visible = true;
            chkME.Visible = true;
            chkEE.Visible = true;
            chkAll.Visible = true;
        }
        else
        {
            chkCE.Visible = false;
            chkCV.Visible = false;
            chkME.Visible = false;
            chkEE.Visible = false;
            chkCE.Checked = false;
            chkCV.Checked = false;
            chkME.Checked = false;
            chkEE.Checked = false;
            //chkAll.Visible = false;
        }
        if (chkDiploma.Checked)
        {
            chkDCE.Visible = true;
            chkDCV.Visible = true;
            chkDME.Visible = true;
            chkDEE.Visible = true;
            chkAll.Visible = true;
        }
        else
        {
            chkDCE.Visible = false;
            chkDCV.Visible = false;
            chkDME.Visible = false;
            chkDEE.Visible = false;
        }
    }
    protected void chkDiploma_CheckedChanged(object sender, EventArgs e)
    {
        lblSubmitChk.Text = "";
        if (chkDiploma.Checked && chkAll.Checked)
        {
            chkDCE.Visible = true;
            chkDCV.Visible = true;
            chkDME.Visible = true;
            chkDEE.Visible = true;
            chkAll.Visible = true;
            chkDCE.Checked = true;
            chkDCV.Checked = true;
            chkDME.Checked = true;
            chkDEE.Checked = true;
        }
        else if (chkDiploma.Checked)
        {
            chkDCE.Visible = true;
            chkDCV.Visible = true;
            chkDME.Visible = true;
            chkDEE.Visible = true;
            chkAll.Visible = true;
        }
        else
        {
            chkDCE.Visible = false;
            chkDCV.Visible = false;
            chkDME.Visible = false;
            chkDEE.Visible = false;
            chkDCE.Checked = false;
            chkDCV.Checked = false;
            chkDME.Checked = false;
            chkDEE.Checked = false;
            //chkAll.Visible = false;
        }
        if (chkDegree.Checked)
        {
            chkCE.Visible = true;
            chkCV.Visible = true;
            chkME.Visible = true;
            chkEE.Visible = true;
            chkAll.Visible = true;
        }
        else
        {
            chkCE.Visible = false;
            chkCV.Visible = false;
            chkME.Visible = false;
            chkEE.Visible = false;
        }
    }
    protected void chkAll_CheckedChanged(object sender, EventArgs e)
    {
        lblSubmitChk.Text = "";
        if (chkAll.Checked)
        {
            if (chkDegree.Checked && chkDiploma.Checked)
            {
                chkCE.Checked = true;
                chkCV.Checked = true;
                chkME.Checked = true;
                chkEE.Checked = true;
                chkDCE.Checked = true;
                chkDCV.Checked = true;
                chkDME.Checked = true;
                chkDEE.Checked = true;
            }
            else if (chkDegree.Checked)
            {
                chkCE.Checked = true;
                chkCV.Checked = true;
                chkME.Checked = true;
                chkEE.Checked = true;
            }
            else
            {
                chkDCE.Checked = true;
                chkDCV.Checked = true;
                chkDME.Checked = true;
                chkDEE.Checked = true;
            }
        }
        else
        {
            if (chkDegree.Checked && chkDiploma.Checked)
            {
                chkCE.Checked = false;
                chkCV.Checked = false;
                chkME.Checked = false;
                chkEE.Checked = false;
                chkDCE.Checked = false;
                chkDCV.Checked = false;
                chkDME.Checked = false;
                chkDEE.Checked = false;
            }
            else if (chkDegree.Checked)
            {
                chkCE.Checked = false;
                chkCV.Checked = false;
                chkME.Checked = false;
                chkEE.Checked = false;
            }
            else
            {
                chkDCE.Checked = false;
                chkDCV.Checked = false;
                chkDME.Checked = false;
                chkDEE.Checked = false;
            }
        }
    }
    protected void chkSub_CheckedChanged(object sender, EventArgs e)
    {
        lblSubmitChk.Text = "";
        var checkBox = new List<CheckBox>();
        if (chkDegree.Checked && chkDiploma.Checked)
        {
            checkBox.Add(chkCE);
            checkBox.Add(chkCV);
            checkBox.Add(chkME);
            checkBox.Add(chkEE);
            checkBox.Add(chkDCE);
            checkBox.Add(chkDCV);
            checkBox.Add(chkDME);
            checkBox.Add(chkDEE);
        }
        else if (chkDegree.Checked)
        {
            checkBox.Add(chkCE);
            checkBox.Add(chkCV);
            checkBox.Add(chkME);
            checkBox.Add(chkEE);
        }
        else
        {
            checkBox.Add(chkDCE);
            checkBox.Add(chkDCV);
            checkBox.Add(chkDME);
            checkBox.Add(chkDEE);
        }
        foreach (CheckBox ch in checkBox)
        {
            if (!ch.Checked)
            {
                chkAll.Checked = false;
                break;
            }
            else
            {
                chkAll.Checked = true;
            }
        }
    }
    /*protected void chkClear_CheckedChanged(object sender, EventArgs e)
    {
        chkCE.Checked = false;
        chkCV.Checked = false;
        chkME.Checked = false;
        chkEE.Checked = false;
        chkDCE.Checked = false;
        chkDCV.Checked = false;
        chkDME.Checked = false;
        chkDEE.Checked = false;
    }*/
    protected void btnSubmitChk_Click(object sender, EventArgs e)
    {
        lblSubmitChk.Text = "";
        if (chkDegree.Checked || chkDiploma.Checked || chkDegree.Checked && chkDiploma.Checked)
        {
            var checkBox = new List<System.Web.UI.WebControls.CheckBox>() { chkCE, chkCV, chkME, chkEE, chkDCE, chkDCV, chkDME, chkDEE };
            var onCheckBox = new List<System.Web.UI.WebControls.CheckBox>();
            foreach (CheckBox cb in checkBox)
            {
                if (cb.Checked)
                {
                    onCheckBox.Add(cb);
                }
            }
            //lblSubmitChk.Text = "You are selected <br/>";
            if (onCheckBox.Count == 0)
            {
                lblSubmitChk.Text = "Please select at least one Branch";
            }
            else
            {
                lblSubmitChk.Text = "You are selected <br/>";
                foreach (CheckBox cb in onCheckBox)
                {
                    lblSubmitChk.Text += cb.Text + "<br/>";
                }
            }
        }
        else
        {
            lblSubmitChk.Text = "Please select at least one Department";
        }


        /*if (chkDegree.Checked || chkDiploma.Checked)
        {
            if (chkDegree.Checked)
            {
                if (chkCE.Checked && chkCV.Checked && chkME.Checked && chkEE.Checked)
                {
                    lblSubmitChk.Text = "You are selected <br/>" + chkCE.Text + "<br/>" + chkCV.Text + "<br/>" + chkME.Text + "<br/>" + chkEE.Text;
                }
                else if (chkCE.Checked && chkCV.Checked && chkME.Checked)
                {
                    lblSubmitChk.Text = "You are selected <br/>" + chkCE.Text + "<br/>" + chkCV.Text + "<br/>" + chkME.Text;
                }
                else if (chkCV.Checked && chkME.Checked && chkEE.Checked)
                {
                    lblSubmitChk.Text = "You are selected <br/>" + chkCV.Text + "<br/>" + chkME.Text + "<br/>" + chkEE.Text;
                }
                else if (chkME.Checked && chkEE.Checked && chkCE.Checked)
                {
                    lblSubmitChk.Text = "You are selected <br/>" + chkCE.Text + "<br/>" + chkME.Text + "<br/>" + chkEE.Text;
                }
                else if (chkCE.Checked && chkCV.Checked && chkEE.Checked)
                {
                    lblSubmitChk.Text = "You are selected <br/>" + chkCE.Text + "<br/>" + chkCV.Text + "<br/>" + chkEE.Text;
                }
                else if (chkCE.Checked && chkCV.Checked)
                {
                    lblSubmitChk.Text = "You are selected <br/>" + chkCE.Text + "<br/>" + chkCV.Text;
                }
                else if (chkCV.Checked && chkME.Checked)
                {
                    lblSubmitChk.Text = "You are selected <br/>" + chkCV.Text + "<br/>" + chkME.Text;
                }
                else if (chkME.Checked && chkEE.Checked)
                {
                    lblSubmitChk.Text = "You are selected <br/>" + chkME.Text + "<br/>" + chkEE.Text;
                }
                else if (chkEE.Checked && chkCE.Checked)
                {
                    lblSubmitChk.Text = "You are selected <br/>" + chkCE.Text + "<br/>" + chkEE.Text;
                }
                else if (chkCE.Checked && chkME.Checked)
                {
                    lblSubmitChk.Text = "You are selected <br/>" + chkCE.Text + "<br/>" + chkME.Text;
                }
                else if (chkCV.Checked && chkEE.Checked)
                {
                    lblSubmitChk.Text = "You are selected <br/>" + chkCV.Text + "<br/>" + chkEE.Text;
                }
                else if(chkCE.Checked)
                {
                    lblSubmitChk.Text = "You are selected <br/>" + chkCE.Text;
                }
                else if (chkCV.Checked)
                {
                    lblSubmitChk.Text = "You are selected <br/>" + chkCV.Text;
                }
                else if (chkME.Checked)
                {
                    lblSubmitChk.Text = "You are selected <br/>" + chkME.Text;
                }
                else if (chkEE.Checked)
                {
                    lblSubmitChk.Text = "You are selected <br/>" + chkEE.Text;
                }
                else
                {
                    lblSubmitChk.Text = "Please select at least one Branch";
                }

            }
            else
            {
                if (chkDCE.Checked && chkDCV.Checked && chkDME.Checked && chkDEE.Checked)
                {
                    lblSubmitChk.Text = "You are selected <br/>" + chkDCE.Text + "<br/>" + chkDCV.Text + "<br/>" + chkDME.Text + "<br/>" + chkDEE.Text;
                }
                else if (chkDCE.Checked && chkDCV.Checked && chkDME.Checked)
                {
                    lblSubmitChk.Text = "You are selected <br/>" + chkDCE.Text + "<br/>" + chkDCV.Text + "<br/>" + chkDME.Text;
                }
                else if (chkDCV.Checked && chkDME.Checked && chkDEE.Checked)
                {
                    lblSubmitChk.Text = "You are selected <br/>" + chkDCV.Text + "<br/>" + chkDME.Text + "<br/>" + chkDEE.Text;
                }
                else if (chkDME.Checked && chkDEE.Checked && chkDCE.Checked)
                {
                    lblSubmitChk.Text = "You are selected <br/>" + chkDCE.Text + "<br/>" + chkDME.Text + "<br/>" + chkDEE.Text;
                }
                else if (chkDCE.Checked && chkDCV.Checked && chkDEE.Checked)
                {
                    lblSubmitChk.Text = "You are selected <br/>" + chkDCE.Text + "<br/>" + chkDCV.Text + "<br/>" + chkDEE.Text;
                }
                else if (chkDCE.Checked && chkDCV.Checked)
                {
                    lblSubmitChk.Text = "You are selected <br/>" + chkDCE.Text + "<br/>" + chkDCV.Text;
                }
                else if (chkDCV.Checked && chkDME.Checked)
                {
                    lblSubmitChk.Text = "You are selected <br/>" + chkDCV.Text + "<br/>" + chkDME.Text;
                }
                else if (chkDME.Checked && chkDEE.Checked)
                {
                    lblSubmitChk.Text = "You are selected <br/>" + chkDME.Text + "<br/>" + chkDEE.Text;
                }
                else if (chkDEE.Checked && chkDCE.Checked)
                {
                    lblSubmitChk.Text = "You are selected <br/>" + chkDCE.Text + "<br/>" + chkDEE.Text;
                }
                else if (chkDCE.Checked && chkDME.Checked)
                {
                    lblSubmitChk.Text = "You are selected <br/>" + chkDCE.Text + "<br/>" + chkDME.Text;
                }
                else if (chkDCV.Checked && chkDEE.Checked)
                {
                    lblSubmitChk.Text = "You are selected <br/>" + chkDCV.Text + "<br/>" + chkDEE.Text;
                }
                else if (chkDCE.Checked)
                {
                    lblSubmitChk.Text = "You are selected <br/>" + chkDCE.Text;
                }
                else if (chkDCV.Checked)
                {
                    lblSubmitChk.Text = "You are selected <br/>" + chkDCV.Text;
                }
                else if (chkDME.Checked)
                {
                    lblSubmitChk.Text = "You are selected <br/>" + chkDME.Text;
                }
                else if (chkDEE.Checked)
                {
                    lblSubmitChk.Text = "You are selected <br/>" + chkDEE.Text;
                }
                else
                {
                    lblSubmitChk.Text = "Please select at least one Branch";
                }
            }
        }
        else
        {
            lblSubmitChk.Text = "Plsese select at least one Department";
        }*/
    }
}