package com.admin.board.model.vo;

import java.sql.Date;

public class Board {
	
	private int boardNumber;
	private String boardTitle;
	private String boardDetail;
	private Date boardAddDate;
	
	public Board() {
		super();
	}

	public Board(int boardNumber, String boardTitle, String boardDetail, Date boardAddDate) {
		super();
		this.boardNumber = boardNumber;
		this.boardTitle = boardTitle;
		this.boardDetail = boardDetail;
		this.boardAddDate = boardAddDate;
	}

	public int getBoardNumber() {
		return boardNumber;
	}

	public void setBoardNumber(int boardNumber) {
		this.boardNumber = boardNumber;
	}

	public String getBoardTitle() {
		return boardTitle;
	}

	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}

	public String getBoardDetail() {
		return boardDetail;
	}

	public void setBoardDetail(String boardDetail) {
		this.boardDetail = boardDetail;
	}

	public Date getBoardAddDate() {
		return boardAddDate;
	}

	public void setBoardAddDate(Date boardAddDate) {
		this.boardAddDate = boardAddDate;
	}

	@Override
	public String toString() {
		return "Board [boardNumber=" + boardNumber + ", boardTitle=" + boardTitle + ", boardDetail=" + boardDetail
				+ ", boardAddDate=" + boardAddDate + "]";
	}
	
}
