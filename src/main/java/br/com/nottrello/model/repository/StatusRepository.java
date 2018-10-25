package br.com.nottrello.model.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.nottrello.model.entity.Status;

public interface StatusRepository extends JpaRepository<Status, Long> {

}
