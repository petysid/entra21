import 'dart:io';

void main() {

  double media = calculaMedia(7.3, 8.2, 4.3);
  String situacao = retornaSituacao(media);
  print('A média do aluno é: ${media.toStringAsFixed(2)} e ele está: $situacao');
}

calculaMedia(double nota1, double nota2, double nota3){
  double media = (nota1 + nota2 + nota3) / 3;
  return media;
}

retornaSituacao(double media){
  if(media > 7){
    return 'Aprovado';
  }if(media >= 5){
    return 'Em Recuperação';
  }else{
    return 'Reprovado';
  }
  
}