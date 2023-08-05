package com.abdulrehman1793.mma.model;

import jakarta.persistence.*;
import lombok.*;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder(toBuilder = true)
@Entity
public class WorkOrder {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @ManyToOne
    private FinishedGoods finishedGoods;

    @Builder.Default
    private double fullBatch = 0.00;

    @Builder.Default
    private double actualQty = 0.00;

    @ManyToOne
    private ProductType type;

    @Builder.Default
    private double batchCost = 0.00;

    @Builder.Default
    private double actualCost = 0.00;

    @ManyToOne
    private Orders orders;
}
