package org.dawin.mapper;

import java.util.List;

import org.dawin.domain.NoticeVO;


public interface NoticeMapper {
	
	
	public void insert(NoticeVO noticeboard);
	
	public List<NoticeVO> getNoticeList();


}