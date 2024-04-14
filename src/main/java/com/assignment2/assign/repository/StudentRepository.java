package com.assignment2.assign.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.assignment2.assign.model.Student;


@Repository
public interface StudentRepository extends JpaRepository<Student,Long> {
		

}

