package com.abdulrehman1793.mma.web.services.impl;

import com.abdulrehman1793.mma.model.UnitOfMeasure;
import com.abdulrehman1793.mma.repository.UnitOfMeasureRepository;
import com.abdulrehman1793.mma.web.services.UnitOfMeasureService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class UnitOfMeasureServiceImpl implements UnitOfMeasureService {

    private final UnitOfMeasureRepository unitOfMeasureRepository;

    @Override
    public List<UnitOfMeasure> findAll() {
        return unitOfMeasureRepository.findAll();
    }
}
