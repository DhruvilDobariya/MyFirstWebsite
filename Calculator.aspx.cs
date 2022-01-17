using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Calculator : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnCalculate_Click(object sender, EventArgs e)
    {
        double input;
        //txtAns.Text = Convert.ToString(Convert.ToDouble(txtNo1.Text) + Convert.ToDouble(txtNo2.Text));
        if (txtNo1.Text.Trim() == "")
        {
            if (txtNo2.Text.Trim() == "")
            {
                if (txtOperator.Text.Trim() == "")
                {
                    msgNo1.Text = "Please enter a no";
                    msgNo2.Text = "Please enter a no";
                    msgOperator.Text = "Please enter a operator";
                }
                else
                {
                    msgNo1.Text = "Please enter a no";
                    msgNo2.Text = "Please enter a no";
                }
            }
            else if (txtOperator.Text.Trim() == "")
            {
                msgNo1.Text = "Please enter a no 1";
                msgOperator.Text = "Please enter a operator";
            }
            else
            {
                msgNo1.Text = "Please enter a no";
            }
        }
        else if (txtNo2.Text.Trim() == "")
        {
            if (txtOperator.Text.Trim() == "")
            {
                msgNo2.Text = "Please enter a no";
                msgOperator.Text = "Please enter a operator";
            }
            else
            {
                msgNo2.Text = "Please enter a no";
            }
        }
        else if (txtOperator.Text.Trim() == "")
        {
            msgOperator.Text = "Please enter a operator";
        }
        /*else if(txtNo2.Text.Trim() == "")
        {
            msgNo2.Text = "Please enter a no";
        }
        else if(txtOperator.Text.Trim() == "")
        {
            msgOperator.Text = "Please enter a operator";
        }*/
        else if (!double.TryParse(txtNo1.Text.Trim(), out input))
        {
            if (!double.TryParse(txtNo2.Text.Trim(), out input))
            {
                msgNo1.Text = "Plaese enter a number";
                msgNo2.Text = "Please enter a number";
            }
            else
            {
                msgNo1.Text = "Please enter a number";
            }
        }
        else if (!double.TryParse(txtNo2.Text.Trim(), out input))
        {
            msgNo2.Text = "Please enter a number";
        }
        else
        {
            switch (txtOperator.Text.Trim())
            {
                case "+":
                    txtAns.Text = Convert.ToString(Convert.ToDouble(txtNo1.Text) + Convert.ToDouble(txtNo2.Text));
                    break;
                case "-":
                    txtAns.Text = Convert.ToString(Convert.ToDouble(txtNo1.Text) - Convert.ToDouble(txtNo2.Text));
                    break;
                case "*":
                    txtAns.Text = Convert.ToString(Convert.ToDouble(txtNo1.Text) * Convert.ToDouble(txtNo2.Text));
                    break;
                case "/":
                    txtAns.Text = Convert.ToString(Convert.ToDouble(txtNo1.Text) / Convert.ToDouble(txtNo2.Text));
                    break;
                case "%":
                    txtAns.Text = Convert.ToString(Convert.ToDouble(txtNo1.Text) % Convert.ToDouble(txtNo2.Text));
                    break;
                default:
                    msgOperator.Text = "Please enter valid operator";
                    break;
            }
            msgNo1.Text = "";
            msgNo2.Text = "";
            msgOperator.Text = "";
            lblSave.Text = "";
        }
    }

    protected void btnReset_Click(object sender, EventArgs e)
    {
        if (lblHistory.Text.Trim() != "")
        {
            txtNo2.Text = "";
            txtOperator.Text = "";
            txtAns.Text = "";
            msgNo1.Text = "";
            msgNo2.Text = "";
            msgOperator.Text = "";
        }
        else
        {
            txtNo1.Text = "";
            txtNo2.Text = "";
            txtOperator.Text = "";
            txtAns.Text = "";
            msgNo1.Text = "";
            msgNo2.Text = "";
            msgOperator.Text = "";
        }

    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        //btnCalculate.Click += new EventHandler(this.btnCalculate_Click);
        if (txtAns.Text.Trim() == "")
        {
            lblSave.Text = "Please first calculate";
        }
        else
        {
            if (lblHistory.Text == "")
            {
                lblHistory.Text = "(" + txtNo1.Text.Trim() + txtOperator.Text.Trim() + txtNo2.Text.Trim() + " = " + txtAns.Text.Trim() + ")";
                txtNo1.ReadOnly = true;
            }
            else
            {
                lblHistory.Text = "(" + lblHistory.Text + txtOperator.Text.Trim() + txtNo2.Text.Trim() + " = " + txtAns.Text.Trim() + ")";
            }
            txtNo1.Text = txtAns.Text.Trim();
            txtNo2.Text = "";
            txtOperator.Text = "";
            txtAns.Text = "";
        }
    }
    protected void btnResetAll_Click(object sender, EventArgs e)
    {
        txtNo1.ReadOnly = false;
        txtNo1.Text = "";
        txtNo2.Text = "";
        txtAns.Text = "";
        msgNo1.Text = "";
        msgNo2.Text = "";
        msgOperator.Text = "";
        lblSave.Text = "";
        lblHistory.Text = "";
    }
}