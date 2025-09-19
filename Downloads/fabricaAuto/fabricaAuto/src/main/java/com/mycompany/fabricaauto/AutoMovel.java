/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.fabricaauto;

/**
 *
 * @author migue
 */
public class AutoMovel {

    public String cor;
    public String placa;
    public String modelo;
    public int ligado;
    public int emMovimento;

    public AutoMovel(String cor, String placa, String modelo) {
        this.cor = cor;
        this.placa = placa;
        this.modelo = modelo;

    }

    public void ligar() {
        this.ligado = 1;
        System.out.println("O Motor do veiculo foi ligado.");
    }

    public void mover() {
        if (ligado == 1) {
            emMovimento = 1;
            System.out.println("O veiculo esta em movimento.");
        } else {
            System.out.println("O motor do veiculo precisa estar ligado para se mover.");
        }
    }

    public void parar() {
        if (emMovimento == 1) {
            emMovimento = 0;
            System.out.println("O veiculo esta parando.");
        } else {
            System.out.println("O Veiculo esta parado.");
        }
    }
}
