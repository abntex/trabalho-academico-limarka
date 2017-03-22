# More info at https://github.com/guard/guard#readme

guard :shell do

  watch(/^(anexos.md|apendices.md|errata.md|trabalho-academico.md|.*\.latex|configuracao.pdf|configuracao.yaml)$/) do |m| 
    
    puts "#{Time.now.strftime('%H:%M:%S')} #{m[0]} foi alterado. Iniciando geração do PDF"
    `limarka exec`
    # Exibe erros de citações inválidas
    `pdfgrep  -H --color always '\(\\?\\?\)' xxx*.pdf`
  end
  
  watch(/^slides\.md$/) do |m| 
    puts "#{Time.now.strftime('%H:%M:%S')} #{m[0]} foi alterado. Iniciando geração do Slide PDF"
    `pandoc --slide-level=3 -t beamer+raw_tex slides.md -o slides.pdf`
  end
end
