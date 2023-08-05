package com.abdulrehman1793.mma.repository;

import com.abdulrehman1793.mma.model.PurchaseOrder;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PurchaseOrderRepository extends JpaRepository<PurchaseOrder, Integer> {
}