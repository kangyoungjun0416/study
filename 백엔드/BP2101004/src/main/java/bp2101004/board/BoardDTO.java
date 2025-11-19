package bp2101004.board;

import java.sql.Timestamp;

public class BoardDTO {

    private int id;              // 글 번호
    private String title;        // 제목
    private String content;      // 내용
    private String writer;       // 작성자
    private int hit;             // 조회수
    private Timestamp createdAt; // 작성일

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getWriter() {
        return writer;
    }

    public void setWriter(String writer) {
        this.writer = writer;
    }

    public int getHit() {
        return hit;
    }

    public void setHit(int hit) {
        this.hit = hit;
    }

    public Timestamp getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Timestamp createdAt) {
        this.createdAt = createdAt;
    }

    // 🔥 JSP 호환용(이름 regDate 사용한 코드 방지)
    public Timestamp getRegDate() {
        return createdAt;
    }

    public void setRegDate(Timestamp regDate) {
        this.createdAt = regDate;
    }
}
