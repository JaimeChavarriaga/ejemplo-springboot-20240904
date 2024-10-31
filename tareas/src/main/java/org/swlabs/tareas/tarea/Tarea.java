package org.swlabs.tareas.tarea;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import lombok.Data;

@Entity
@Data
public class Tarea {

    @Id
    @GeneratedValue
    Long id;

    String tarea;

    Boolean terminado;

}
