package org.swlabs.tareas.tarea;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface TareaRepository extends CrudRepository<Tarea, Long> {

}
