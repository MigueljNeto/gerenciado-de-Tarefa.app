/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */
package com.mycompany.fabricaauto;

/**
 *
 * @author migue
 */
public class FabricaAuto {

    public static void main(String[] args) {
        Carro carro1 = new Carro("Preto", "MJC-2008", "Mustang"); 
        
        // Neste campo vai aparacer as informaçoes do modelo do veiculo.
        carro1.modelo();
        //=============================================================
        
        // Neste campo vai informar se o veiculo está aberto ou nao e se tem teto solar.
        carro1.abrirFechar();
        carro1.abrirFechar();
        carro1.abrirFecharTetoSolar();
        //=============================================================
       
        //Neste campo está mostrando as ações do veiculo.
        carro1.mover();
        carro1.parar();
        //==============================================================
        
        Carro carro2 = new Carro("vermelho", "MKC-2008", "Ferrari"); 
        
        // Neste campo vai aparacer as informaçoes do modelo do veiculo.
        carro2.modelo();
        //=============================================================
        
        // Neste campo vai informar se o veiculo está aberto ou nao e se tem teto solar.
        carro2.abrirFechar();
        carro2.abrirFechar();
        carro2.setTetoSolar(0); // para definir se vai ter teto solar ou nao digite: 0 para nao ter e 1 sim para ter. 
        carro2.abrirFecharTetoSolar();
        //=============================================================
       
        //Neste campo está mostrando as ações do veiculo.
        carro2.ligar();
        carro2.mover();
        carro2.parar();
        //==============================================================
       
        Moto moto1 = new Moto("branco", "LVY-0910", "FAZER");
        
        // Neste campo vai aparacer as informaçoes do modelo do veiculo e informações adicionais.
        moto1.modelo();
        moto1.bau();
        moto1.TemAbs(0);
        moto1.freioAbs();
        //=============================================================
    
        //Neste campo está mostrando as ações do veiculo.
        moto1.ligar();
        moto1.mover();
        moto1.parar();
        moto1.alarme();
        //==============================================================
        
        Moto moto2 = new Moto("Azul", "LIV-1010", "MT09");
        
        // Neste campo vai aparacer as informaçoes do modelo do veiculo e informações adicionais.
        moto2.modelo();
        moto2.temBau(1); // para definir se vai ter bau ou nao digite: 0 para nao ter e 1 sim para ter. 
        moto2.bau();
        moto2.TemAbs(1);
        moto2.freioAbs();
        //==============================================================

        //Neste campo está mostrando as ações do veiculo.
        moto2.ligar();
        moto2.mover();
        moto2.parar();
        moto2.alarme();
        //==============================================================
    }

}
