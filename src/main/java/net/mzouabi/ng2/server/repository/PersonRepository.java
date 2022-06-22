package net.mzouabi.ng2.server.repository;

import net.mzouabi.ng2.server.dto.PersonDTO;
import net.mzouabi.ng2.server.model.Person;
import org.hibernate.annotations.Parameter;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface PersonRepository extends JpaRepository<Person, Long>, PersonRepositoryCustom {

    @Query(nativeQuery = true, value = "select * from person u where u.id = :id")
    Person getPerson(@Param("id") Long id);

}
