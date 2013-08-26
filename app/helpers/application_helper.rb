module ApplicationHelper
 def project_status(periodo)
   if periodo > 1
     content_for(:span){"Hola"}
   end   
 end
end
