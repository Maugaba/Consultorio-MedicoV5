using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using Newtonsoft.Json;
using System.IO;

namespace Consultorio_Medico
{
    public partial class Login : System.Web.UI.Page
    {
        static List<Usuario> usuarios = new List<Usuario>();
        protected void Page_Load(object sender, EventArgs e)
        {
            string archivo = Server.MapPath("Usuarios.json");
            StreamReader jsonStream = File.OpenText(archivo);
            string json = jsonStream.ReadToEnd();
            jsonStream.Close();

            if (json.Length > 0)
            {
                usuarios = JsonConvert.DeserializeObject<List<Usuario>>(json);
            }
        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            Usuario usuario = new Usuario();
            usuario = usuarios.Find(u => u.User == Login1.UserName);
            if (!(usuario == null))
            {
                bool esPasswordValido = BCrypt.Net.BCrypt.Verify(Login1.Password, usuario.contraseña);
                if (esPasswordValido)
                {
                    FormsAuthenticationTicket tkt;
                    string cookiestr;
                    HttpCookie ck;
                    tkt = new FormsAuthenticationTicket(1, Login1.UserName, DateTime.Now,
                    DateTime.Now.AddMinutes(30), Login1.RememberMeSet, usuario.Nivel);
                    cookiestr = FormsAuthentication.Encrypt(tkt);
                    ck = new HttpCookie(FormsAuthentication.FormsCookieName, cookiestr);
                    if (Login1.RememberMeSet)
                        ck.Expires = tkt.Expiration;
                    ck.Path = FormsAuthentication.FormsCookiePath;
                    Response.Cookies.Add(ck);
    
                    string strRedirect = "Default.aspx";
                    Response.Redirect(strRedirect, true);
                }
            }
            else
            {

            }
            
        }


        protected void Crear_Click(object sender, EventArgs e)
        {
            Usuario usuario = new Usuario();
            usuario.User = TextBoxUsuario.Text;
            usuario.contraseña = TextBoxUsuario.Text;
            string miPassword = TextBoxContraseña.Text;
            string miHash = BCrypt.Net.BCrypt.HashPassword(miPassword);
            usuario.contraseña = miHash;
            usuario.Nivel = RadioButtonListNivel.SelectedValue;
            usuarios.Add(usuario);
            Guardar_Json();
            Response.Write("<script>alert('Usuario creado con exito')</script>");
        }

        void Guardar_Json()
        {
            string json = JsonConvert.SerializeObject(usuarios);
            string archivo = Server.MapPath("Usuarios.json");
            File.WriteAllText(archivo, json);

        }
    }
}