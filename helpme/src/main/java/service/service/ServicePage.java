package service.service;

import java.util.List;

import service.model.Service;

public class ServicePage {

	private int total;  //12
	private int currentPage;  //2
	private List<Service> content;
	private int totalPages; //1+1=2
	private int startPage;  //1
	private int endPage; //2

	public ServicePage(int total, int currentPage, int size, List<Service> content) {
		this.total = total;  
		this.currentPage = currentPage;
		this.content = content;
		if (total == 0) {
			totalPages = 0;
			startPage = 0;
			endPage = 0;
		} else {
			totalPages = total / size;
			if (total % size > 0) {
				totalPages++;
			}
			int modVal = currentPage % 5;
			startPage = currentPage / 5 * 5 + 1;
			if (modVal == 0) startPage -= 5;
			
			endPage = startPage + 4;
			if (endPage > totalPages) endPage = totalPages;
		}
	}

	public int getTotal() {
		return total;
	}

	public boolean hasNoService() {
		return total == 0;
	}

	public boolean hasServices() {
		return total > 0;
	}
	
	public int getCurrentPage() {
		return currentPage;
	}

	public int getTotalPages() {
		return totalPages;
	}

	public List<Service> getContent() {
		return content;
	}

	public int getStartPage() {
		return startPage;
	}
	
	public int getEndPage() {
		return endPage;
	}
}
