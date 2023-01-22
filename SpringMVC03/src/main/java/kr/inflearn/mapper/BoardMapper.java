package kr.inflearn.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.inflearn.model.BoardVO;

@Mapper
public interface BoardMapper {
	public List<BoardVO> getList();
	public void insert(BoardVO board);
	public BoardVO read(int bno);
	public int delete(int bno);
	public int update(BoardVO board);
}
