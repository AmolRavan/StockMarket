package com.hw.stock.dao.impl;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.hw.stock.dao.StockDao;
import com.hw.stock.model.Compony;
import com.hw.stock.model.ComponyHistory;

@Repository
public class StockDaoImpl implements StockDao {

	public List<String> searchCompony(String comName) {
		//Creating Company names dummy names
		List<String> cList = new ArrayList<String>();
		cList.add("Infosys");
		cList.add("HoneyWell");
		cList.add("IBM");
		cList.add("Google");
		cList.add("Oracle");
		return cList;
	}

	public Compony getComponyStock(String comName) {
		//Creating Company class dummy object
		Compony compony = new Compony();
		
		compony.setName("Honey Well");
		compony.setCurrentRate(2000);
		compony.setHighDate(LocalDate.now().minusDays(10));
		compony.setHighRate(2200);
		compony.setLowDate(LocalDate.now().minusDays(500));
		compony.setLowRate(1900);
		return compony;
	}

	public List<Compony> getProfitStockInfo() {
		List<Compony> pList = new ArrayList<Compony>();
		//Creating dummy object
		Compony c1 = new Compony("ACC", 1500, LocalDate.now().minusDays(23), 2200, LocalDate.now().minusDays(83), 480, new ComponyHistory(1488));
		Compony c2 = new Compony("Honey Well", 2900, LocalDate.now().minusDays(230), 2200, LocalDate.now().minusDays(278), 120,new ComponyHistory(2800));
		Compony c3 = new Compony("Bharat", 2500, LocalDate.now().minusDays(670), 2200, LocalDate.now().minusDays(58), 600,new ComponyHistory(2475));
		pList.add(c1);
		pList.add(c2);
		pList.add(c3);

		return pList;
	}

	public List<Compony> getLossStockInfo() {
		List<Compony> lList = new ArrayList<Compony>();
        //Creating dummy object
		Compony c1 = new Compony("ACC", 1500, LocalDate.now().minusDays(23), 2200, LocalDate.now().minusDays(83), 480,new ComponyHistory(1504));
		Compony c2 = new Compony("ICICI", 1800, LocalDate.now().minusDays(500), 2200, LocalDate.now().minusDays(670), 200,new ComponyHistory(1850));
		Compony c3 = new Compony("SBI", 2100, LocalDate.now().minusDays(690), 2200, LocalDate.now().minusDays(256), 150,new ComponyHistory(2200));
		lList.add(c1);
		lList.add(c2);
		lList.add(c3);
		return lList;
	}

	/*public ComponyHistoryYear getYearHistory(String comName) {
		ComponyHistoryYear componyHistoryYear = new ComponyHistoryYear(new [1,2]); 
		return null;
	}*/

}
