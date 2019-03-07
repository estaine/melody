package com.estaine.melody.service;

import org.springframework.stereotype.Service;

import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

@Service
public class DefaultValidationService implements ValidationService {

    private Set<String> CORRECT_ASSOCIATIONS = new HashSet<>(Arrays.asList(
            "godfather",
            "god father",
            "крёстный",
            "крестный"
    ));

    @Override
    public String validate(String association) {
        return CORRECT_ASSOCIATIONS.stream().anyMatch(correct -> association.toLowerCase().contains(correct)) ? "Превосходно! [ꖿ -> С], [ꘔ -> Д], [ꕙ -> Ч]" : "Неверно. Попробуйте сыграть мотив ещё раз";
    }
}
