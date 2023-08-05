package com.abdulrehman1793.mma.model;

import jakarta.persistence.*;
import lombok.*;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder(toBuilder = true)
@Entity
public class PurchaseOrder {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @ManyToOne
    private RawGoods rawGoods;

    @Column(length = 20, nullable = false)
    private String upc;

    @Builder.Default
    private double qty = 0.00;

    @ManyToOne
    private UnitOfMeasure uom;

    @Builder.Default
    private double itemCost = 0.00;

    @Builder.Default
    private double totalCost = 0.00;

    @ManyToOne
    private Orders orders;
}
