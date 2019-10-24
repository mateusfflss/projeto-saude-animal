using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace registrosaude
{
	public partial class Form1 : Form
	{
		public Form1()
		{
			InitializeComponent();
		}

		private void button2_Click(object sender, EventArgs e)
		{
			Form2 outro = new Form2();
			outro.ShowDialog();
		}

		private void button1_Click(object sender, EventArgs e)
		{
			if (textBox1.Text == "" || textBox2.Text == "" || textBox3.Text == "")
			{
				MessageBox.Show("não pode deixar os campos vazios!", "ERRO Campos vazios!");
			}
		}
	}
}
