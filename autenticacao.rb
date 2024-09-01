require 'io/console'

class Autenticacao

  def entrada
    print "Nome: "
    @nome = gets.chomp.downcase
    print "Senha: "
    @senha = STDIN.noecho(&:gets).chomp
  end

  def autentica
    if File.exist?("login.txt") && !File.zero?("login.txt")
      linhas = File.readlines("login.txt").map(&:chomp)
        
      @usuario_armazenado = linhas[0]
      @senha_armazenada = linhas[1]

      if @nome == @usuario_armazenado && @senha == @senha_armazenada
        puts "Usuário Autenticado!"
        puts "Bem vindo #{@nome}"
      else
        puts "Usuário e/ou senha inválidos"
        return
      end
    else
      puts "Arquivo não encontrado ou está vazio."
    end
  end
end

autenticacao = Autenticacao.new

autenticacao.entrada
autenticacao.autentica
