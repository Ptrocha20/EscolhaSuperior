package com.escolhaSuperior.backend.config;

import com.escolhaSuperior.backend.model.Universidade;
import com.escolhaSuperior.backend.repository.UniversidadeRepository;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;

@Component
public class DataLoader implements CommandLineRunner {
    private final UniversidadeRepository universidadeRepository;

    public DataLoader(UniversidadeRepository universidadeRepository){
        this.universidadeRepository =  universidadeRepository;
    }

    @Override
   public void run(String... args) {
        /*if (universidadeRepository.count() == 0) {
            Universidade universidade = new Universidade();
            universidade.setNome("Universidade de Lisboa");
            universidade.setLocalizacao("Lisboa");
            universidade.setDescricao("Uma das maiores universidades de Portugal.");
            universidade.setSite("https://www.ulisboa.pt");
            universidade.setTipo("Pública");

            universidadeRepository.save(universidade);
        }*/
    }
}
