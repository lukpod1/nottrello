//package br.com.nottrello.config;
//
//import javax.persistence.EntityManagerFactory;
//import javax.sql.DataSource;
//
//import org.springframework.beans.factory.annotation.Qualifier;
//import org.springframework.boot.jdbc.DataSourceBuilder;
//import org.springframework.boot.context.properties.ConfigurationProperties;
//import org.springframework.boot.orm.jpa.EntityManagerFactoryBuilder;
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
//import org.springframework.orm.jpa.JpaTransactionManager;
//import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;
//import org.springframework.transaction.PlatformTransactionManager;
//import org.springframework.transaction.annotation.EnableTransactionManagement;
//
//@Configuration
//@EnableTransactionManagement
//@EnableJpaRepositories(
//		entityManagerFactoryRef="nottrelloEntityManagerFactory",
//		transactionManagerRef="nottrelloTransactionFactory",
//		basePackages= {"br.com.nottrelo.model.repository"})
//public class NotTrelloDbConfig {
//
//	@Bean(name="nottreloDataSource")
//	@ConfigurationProperties(prefix = "nottrello.datasource")
//	public DataSource dataSource() {
//		 return DataSourceBuilder.create().build();
//	}
//	
//	 @Bean(name = "nottrelloEntityManagerFactory")
//	  public LocalContainerEntityManagerFactoryBean nottrelloEntityManagerFactory(
//	      EntityManagerFactoryBuilder builder, @Qualifier("nottrelloDataSource") DataSource dataSource) {
//	    return builder.dataSource(dataSource).packages("br.com.nottrello.model.entity").persistenceUnit("nottrello")
//	        .build();
//	  }
//
//	  @Bean(name = "nottrelloTransactionManager")
//	  public PlatformTransactionManager nottrelloTransactionManager(
//	      @Qualifier("nottrelloEntityManagerFactory") EntityManagerFactory nottrelloEntityManagerFactory) {
//	    return new JpaTransactionManager(nottrelloEntityManagerFactory);
//	  }
//}
