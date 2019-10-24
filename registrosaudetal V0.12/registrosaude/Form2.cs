using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MySql.Data.MySqlClient;

namespace registrosaude
{
	public partial class Form2 : Form
	{
		public Form2()
		{
			InitializeComponent();
		}

		private void button1_Click(object sender, EventArgs e)
		{
			string Usuario = textBox1.Text;
			string Senha = textBox2.Text;
			string cSenha = textBox3.Text;
			string Email = textBox4.Text;
			string ID = textBox5.Text;
			if(Usuario == ""||Senha == ""||cSenha == ""||Email == "")
			{
				MessageBox.Show("você não pode deixar os campos vazios", "ERRO");
				return;
			}
			if(Senha != cSenha)
			{
				MessageBox.Show("as senhas estão diferente favor colocar igual", "ERRO");
				return;
			}
			string Configuracao = "server=localhost;userid=root;password=12345;port=3306;database=banquinho_saude;";
			MySqlConnection Conexao = new MySqlConnection(Configuracao);
			try
			{
				Conexao.Open();
				MySqlCommand COMANDO = new MySqlCommand("INSERT INTO login_cadastro (ID,Usuario, Senha, Email)" + "VALUES('" + ID +"','" + Usuario + "','" + Senha + "','" + Email + "')", Conexao);
				COMANDO.ExecuteNonQuery();
				MessageBox.Show("Conta registrada com sucesso no banco de dados!", "Conta registrada!");
			}
			catch
			{
				MessageBox.Show("Não foi possivel conectar-se com o banco de dados", "ERRO de conexao");
			}

			}

		private void button2_Click(object sender, EventArgs e)
		{
			Application.Exit();
		}
	}
	}

