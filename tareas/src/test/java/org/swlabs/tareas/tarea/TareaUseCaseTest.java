package org.swlabs.tareas.tarea;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.context.SpringBootTest.WebEnvironment;

@SpringBootTest(webEnvironment=WebEnvironment.RANDOM_PORT)
public class TareaUseCaseTest {

    @Autowired
    TareaUseCase tareaUseCase;

    @Test
    public void sumarDosPositivos() {
        tareaUseCase.suma(2, 2);

    }

}
