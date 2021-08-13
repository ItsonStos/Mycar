import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart';

class DadosEntrada{

  private DateTime data = DateTime.now();
  private double odometro;
  private String tipoCombustivel; //Arquivo ENUM ou Jason com os principais tipos de combustíveis
  private double valorCombustivel;
  private double valorPago;
  //private Localizations local;

  public DadosEntrada(){
  }

  public DadosEntrada(DateTime data, double odometro, String tipoCombustivel, double valorCombustivel, double valorPago){
    this.data = data;
    this.odometro = odometro;
    this.tipoCombustivel = tipoCombustivel;
    this.valorCombustivel = valorCombustivel;
    this.valorPago;
    //this.localizacao = localizacao;
  }

  public double KmPecorrido(){
    //kmAtual  - KmAnterior
    // fazer um for que pegue o valor do odômetro atual(i) - odômetro anterior(i-1) 
    return 0;
  }

  public double VolumeAbastecido(){
    return valorCombustivel * valorPago;
  }

  public double Consumo(){
    return KmPecorrido / VolumeAbastecido;
  }

  public double ConsumoMedio(){
    // fazer um for each
    return 0;
  }

}