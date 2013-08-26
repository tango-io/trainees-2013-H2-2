module ProjectsHelper
  def project_status(periodo)
   if periodo > 0
    cadena = "<div class = 'btn btn2 btn-success'>Back this project <br/> $1 minimium pledge </div>"
   else 
     cadena = "<h3>Closed project</h3>"
   end
    return cadena.html_safe 
  end   
end

