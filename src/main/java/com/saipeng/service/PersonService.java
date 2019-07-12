package com.saipeng.service;

import com.saipeng.pojo.Person;

import java.util.List;
import java.util.Map;

public interface PersonService {


    List<Person> getConditionPersonListByMap(Map<Object, Object> map);

    Integer getConditionPersonCountByMap(Map<Object, Object> map);

    void addOnePerson(Person per);

    Person getById(String id);
}
