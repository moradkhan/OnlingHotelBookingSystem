/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pojo;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 *
 * @author l2pc214e
 */
public class TourService {
     private Map<Integer, Tour> employeeMap = new HashMap();

    public TourService() {
        for (Tour e : TourDAO.doQuery()) {
            employeeMap.put(e.getId(), e);
        }
    }

    public Tour findEmployeeById(int id) {
        return employeeMap.get(id);
    }

    public List<Tour> getAllEmployee() {
        return new ArrayList<Tour>(employeeMap.values());
    }

    public Tour addEmployee(Tour e) {
        TourDAO.doSave(e);
        return e;
    }

    public Tour updateEmployee(Tour e) {
        if (e.getId() <= 0) {
            return null;
        }
        TourDAO.doUpdate(e);
        return e;
    }

    public void removeEmployee(int id) {
        Tour e = new Tour();
        e.setId(id);
        TourDAO.doDelete(e);
    }
}
