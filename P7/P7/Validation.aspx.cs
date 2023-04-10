using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace P7
{
    public partial class Validation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //creadit card regex
            //@"5\d{2}";
            //@"4\d{2}";

            if(RadioButtonList1.SelectedValue == "Visa")
            {
                RegularExpressionValidator2.ValidationExpression = @"4\d{3}";
            }
            else
            {
                RegularExpressionValidator2.ValidationExpression = @"5\d{3}";
            }
        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }
    }
}