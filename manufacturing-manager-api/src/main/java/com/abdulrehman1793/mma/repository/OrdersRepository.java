package com.abdulrehman1793.mma.repository;

import com.abdulrehman1793.mma.model.Orders;
import org.springframework.data.jpa.repository.JpaRepository;

public interface OrdersRepository extends JpaRepository<Orders, Integer> {
}