package com.abdulrehman1793.mma.repository;

import com.abdulrehman1793.mma.model.Person;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PersonRepository extends JpaRepository<Person, Integer> {
}
