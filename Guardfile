guard :shell do
  
    watch(%r{^(imagens/R/densidadegama.R)$}) do |m|
      system("rake imagens/R/densidadegama.pdf")
    end
  
    watch(%r{^(imagens/R/historgrama.R)$}) do |m|
      system("rake imagens/R/historgrama.pdf")
    end
  
    watch(%r{^(imagens/R/pizza-grafico.R)$}) do |m|
      system("rake imagens/R/pizza-grafico.pdf")
    end
  
    watch(%r{^(imagens/R/densidadegama.pdf|imagens/R/historgrama.pdf|imagens/R/pizza-grafico.pdf)$}) do |m|
      system("rake r")
    end
  
    watch(/^(anexos.md|apendices.md|errata.md|trabalho-academico.md|.*.latex|configuracao.pdf|configuracao.yaml)$/) do |m|

    puts "#{Time.now.strftime('%H:%M:%S')} #{m[0]} foi alterado. Iniciando geração do PDF"
      `limarka exec`
      # Exibe erros de citações inválidas
      `pdfgrep  -H --color always '(\?\?)' xxx*.pdf`
    end

end
