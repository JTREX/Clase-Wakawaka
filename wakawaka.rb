# Dado el siguiente código Waka Waka...

#   < > ! * ' ' #
#   ^ " ` $ $ -
#   ! * = @ $ _
#   % * < > ~ # 4


class WakaWaka


  @@cipher = { 
    " < " => " Waka ",
    " > " => " waka ",
    " ! " => " Bang ",
    " * " => " splat ",
    " ' " => " tick ",
    " # " => " hash ",
    " ^ " => " Caret ",
    ' " ' => " quote ",
    " ` " => " back-tick ",
    " $ " => " dollar ",
    " - " => " dash ",
    " = " => " equal ",
    " @ " => " at ",
    " _ " => " underscore ",
    " % " => " Percent ",
    " ~ " => " tilde ",
    " 4 " => " four "
    }

  def initialize(code)
    #variable de instancia 1
    @code = code
    #array para imprimir valores
    @translate = []
  end  

  def evaluate_hash(key)#mètodo para recorrer el hash
    @@cipher.each do |waka, translate|#key del hash , value del hash
      @translate << translate if waka == key
    end
  end

  def extract_values#mètodo para extraer valores del array @translate
    @translate.each do |translate|
      printf "%-10s", translate
    end
  end

  def translate(num)#mètodo para traducir los sìmbolos 
    @translate = []    
    @code[num].each_with_index do |item|
      printf "%-10s", item
      evaluate_hash(item) #llamar otro mètodo
    end
    puts 
    extract_values
    puts
   end
end 


waka_code = WakaWaka.new([[" < ", " > ", " ! ", " * ", " ' ", " ' ", " # "],
    [" ^ ", ' " ',' ` ', " $ ", " $ ", " - "],
    [" ! ", " * ", " = ", " @ ", " $ ", " _ "],
    [" % "," * ", " < ", " > ", " ~ ", " # ", " 4 "]])


waka_code.translate(0)
waka_code.translate(1)
waka_code.translate(2)
waka_code.translate(3)