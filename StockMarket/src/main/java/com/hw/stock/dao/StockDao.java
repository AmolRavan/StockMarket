package com.hw.stock.dao;

import java.util.List;

import com.hw.stock.model.Compony;
import com.hw.stock.model.ComponyHistoryYear;


public interface StockDao {

	public List<String> searchCompony(String comName);

	public Compony getComponyStock(String comName);

	public List<Compony> getProfitStockInfo();

	public List<Compony> getLossStockInfo();
	
	//public ComponyHistoryYear getYearHistory(String comName);

}