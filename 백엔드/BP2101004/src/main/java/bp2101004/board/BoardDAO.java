package bp2101004.board;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import bp2101004.DBUtil;

public class BoardDAO {

    // 🔹 전체 목록 조회
    public List<BoardDTO> findAll() {
        String sql = "SELECT ID, TITLE, WRITER, HIT, CREATED_AT "
                   + "FROM BOARD ORDER BY ID DESC";

        List<BoardDTO> list = new ArrayList<>();

        try (Connection conn = DBUtil.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql);
             ResultSet rs = pstmt.executeQuery()) {

            while (rs.next()) {
                BoardDTO dto = new BoardDTO();
                dto.setId(rs.getInt("ID"));
                dto.setTitle(rs.getString("TITLE"));
                dto.setWriter(rs.getString("WRITER"));
                dto.setHit(rs.getInt("HIT"));
                dto.setCreatedAt(rs.getTimestamp("CREATED_AT"));
                list.add(dto);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    // 🔹 한 건 조회
    public BoardDTO findById(int id) {
        String sql = "SELECT ID, TITLE, CONTENT, WRITER, HIT, CREATED_AT "
                   + "FROM BOARD WHERE ID = ?";

        BoardDTO dto = null;

        try (Connection conn = DBUtil.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {

            pstmt.setInt(1, id);

            try (ResultSet rs = pstmt.executeQuery()) {
                if (rs.next()) {
                    dto = new BoardDTO();
                    dto.setId(rs.getInt("ID"));
                    dto.setTitle(rs.getString("TITLE"));
                    dto.setContent(rs.getString("CONTENT"));
                    dto.setWriter(rs.getString("WRITER"));
                    dto.setHit(rs.getInt("HIT"));
                    dto.setCreatedAt(rs.getTimestamp("CREATED_AT"));
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return dto;
    }

    // 🔹 글 등록
    public void insert(BoardDTO dto) {
        String sql = "INSERT INTO BOARD (TITLE, CONTENT, WRITER) VALUES (?, ?, ?)";

        try (Connection conn = DBUtil.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {

            pstmt.setString(1, dto.getTitle());
            pstmt.setString(2, dto.getContent());
            pstmt.setString(3, dto.getWriter());

            int count = pstmt.executeUpdate();
            System.out.println("▶ insert 실행됨, 삽입된 행 수 = " + count);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // 🔹 글 수정
    public void update(BoardDTO dto) {
        String sql = "UPDATE BOARD "
                   + "SET TITLE = ?, CONTENT = ?, WRITER = ? "
                   + "WHERE ID = ?";

        try (Connection conn = DBUtil.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {

            pstmt.setString(1, dto.getTitle());
            pstmt.setString(2, dto.getContent());
            pstmt.setString(3, dto.getWriter());
            pstmt.setInt(4, dto.getId());

            pstmt.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // 🔹 글 삭제
    public void delete(int id) {
        String sql = "DELETE FROM BOARD WHERE ID = ?";

        try (Connection conn = DBUtil.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {

            pstmt.setInt(1, id);
            pstmt.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // 🔹 조회수 증가 (원하면 view에서 사용)
    public void increaseHit(int id) {
        String sql = "UPDATE BOARD SET HIT = HIT + 1 WHERE ID = ?";

        try (Connection conn = DBUtil.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {

            pstmt.setInt(1, id);
            pstmt.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    // 🔹 최근 글 n개 조회 (메인 화면용)
    public List<BoardDTO> findRecent(int limit) {
        String sql = "SELECT ID, TITLE, WRITER, HIT, CREATED_AT "
                   + "FROM BOARD "
                   + "ORDER BY ID DESC "
                   + "LIMIT ?";

        List<BoardDTO> list = new ArrayList<>();

        try (Connection conn = DBUtil.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {

            pstmt.setInt(1, limit);

            try (ResultSet rs = pstmt.executeQuery()) {
                while (rs.next()) {
                    BoardDTO dto = new BoardDTO();
                    dto.setId(rs.getInt("ID"));
                    dto.setTitle(rs.getString("TITLE"));
                    dto.setWriter(rs.getString("WRITER"));
                    dto.setHit(rs.getInt("HIT"));
                    dto.setCreatedAt(rs.getTimestamp("CREATED_AT"));
                    list.add(dto);
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }
}
