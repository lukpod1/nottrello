package br.com.nottrello.model.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.com.nottrello.model.entity.Resposta;

@Repository
public interface RespostaRepository extends JpaRepository<Resposta, Long> {

}
