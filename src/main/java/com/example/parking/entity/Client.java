package com.example.parking.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Table(name = "client")
@NoArgsConstructor
@AllArgsConstructor
@Setter
@Getter
public class Client {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column
    private String fio;

    @Column
    private String phone;

    @Column
    private String paymentMethod;

    @AttributeOverrides({
            @AttributeOverride(name = "plateNumber", column = @Column(name = "car_plate_number")),
            @AttributeOverride(name = "factory", column = @Column(name = "car_factory")),
            @AttributeOverride(name = "model", column = @Column(name = "car_model")),
    })
    @Embedded
    private Car car = new Car();
}
