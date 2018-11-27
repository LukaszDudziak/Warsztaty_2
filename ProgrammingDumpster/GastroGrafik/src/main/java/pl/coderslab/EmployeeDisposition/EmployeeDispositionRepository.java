package pl.coderslab.EmployeeDisposition;

import org.hibernate.metamodel.model.convert.spi.JpaAttributeConverter;
import org.springframework.data.jpa.repository.JpaRepository;

public interface EmployeeDispositionRepository extends JpaRepository<EmployeeDisposition, Long> {
}
