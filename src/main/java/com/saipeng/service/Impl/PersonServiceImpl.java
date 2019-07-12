package com.saipeng.service.Impl;

import com.saipeng.mapper.PersonMapper;
import com.saipeng.pojo.Person;
import com.saipeng.service.PersonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class PersonServiceImpl implements PersonService {

    @Autowired
    private PersonMapper personMapper;


    @Override
    public List<Person> getConditionPersonListByMap(Map<Object, Object> map) {
        return personMapper.getConditionPersonListByMap(map);
    }

    @Override
    public Integer getConditionPersonCountByMap(Map<Object, Object> map) {
        return personMapper.getConditionPersonCountByMap(map);
    }

    @Override
    public void addOnePerson(Person per) {
        personMapper.addOnePerson(per);

    }

    @Override
    public Person getById(String id) {
        return personMapper.getById(id);
    }
}
