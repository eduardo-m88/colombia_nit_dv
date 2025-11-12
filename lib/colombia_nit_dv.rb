require "colombia_nit_dv/version"

module ColombiaNitDv
  module_function

  # Calcula el dígito de verificación de un NIT en Colombia
  def verification_digit(nit)
    my_nit = nit.to_s.gsub(/[\s,.\-]/, "")

    unless my_nit.match?(/\A\d+\z/)
      raise ArgumentError, "El nit/cédula '#{my_nit}' no es válido(a). Debe ser numérico."
    end

    vpri = {
      1 => 3,  2 => 7,  3 => 13, 4 => 17, 5 => 19,
      6 => 23, 7 => 29, 8 => 37, 9 => 41, 10 => 43,
      11 => 47, 12 => 53, 13 => 59, 14 => 67, 15 => 71
    }

    x = 0
    z = my_nit.length

    (0...z).each do |i|
      y = my_nit[i].to_i
      x += y * vpri[z - i]
    end

    y = x % 11
    (y > 1) ? 11 - y : y
  end
end
