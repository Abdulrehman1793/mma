package com.abdulrehman1793.mma.model;

import jakarta.persistence.*;
import lombok.*;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder(toBuilder = true)
@Entity
public class Cost {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(length = 50, unique = true, nullable = false)
    private String name;

    @Column(length = 500)
    private String description;

    @Column(length = 50)
    private String costType;

    @Column(length = 50)
    private String costUnit;

    private double amount;
}
