package cn.ganin.dao;

import cn.ganin.entity.Position;
import cn.ganin.util.DBHelper;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import java.util.List;

public class PositionDao {
    private static JdbcTemplate template = new JdbcTemplate(DBHelper.getDataSource());

    public List<Position> findAll(){
        String sql = "select * from position";
        List<Position> positions = template.query(sql, new BeanPropertyRowMapper<Position>(Position.class));
        return positions;

    }
    public Position findOne(int id){
        String sql = "select * from position where position_id = ?";

        Position position = template.queryForObject(sql, new BeanPropertyRowMapper<Position>(Position.class), id);

        return position;
    }

    public boolean deletePosition(int id){
        String sql = "delete from position where position_id = ?";
        int update = template.update(sql, id);
        String sql1 = "delete from recruit where recruit_position_id = ?";
        template.update(sql1,id);
        if (update!=0){
            return true;
        }else {
            return false;
        }
    }
    public void updatePosition(Position position){
        String sql = "update position set position_name = ? ,position_address = ? ,position_time = ? ," +
                "position_num = ? ,position_edu = ? ,position_experience = ? ,position_salary = ? ,position_desc = ? ," +
                "position_duty = ? ,position_start_time = ? ,position_end_time = ? ,position_edit_time = ? ," +
                "position_state=? where position_id = ? ";
        template.update(sql,position.getPosition_name(),position.getPosition_address(),position.getPosition_time(),
                position.getPosition_num(),position.getPosition_edu(),position.getPosition_experience(),
                position.getPosition_salary(),position.getPosition_desc(),position.getPosition_duty(),
                position.getPosition_start_time(),position.getPosition_end_time(),position.getPosition_edit_time()
                ,position.getPosition_state(),position.getPosition_id());
    }
    public boolean addPosition(Position position){
        String sql = "insert into position values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        int update = template.update(sql, null, position.getPosition_name(), position.getPosition_address(), position.getPosition_time(),
                position.getPosition_num(), position.getPosition_edu(), position.getPosition_experience(),
                position.getPosition_salary(), position.getPosition_desc(), position.getPosition_duty(),
                position.getPosition_start_time(), position.getPosition_end_time(), position.getPosition_edit_time(),
                position.getPosition_enterprise_id(), position.getPosition_publish_state(),position.getPosition_state());
        if (update!=0){
            return true;
        }else{
            return false;
        }
    }

    public List<Position> findPublishedPosition(int id) {
        String sql = "select * from position where position_publish_state = ? and position_enterprise_id = ?";
        List<Position> publishedPosition = template.query(sql, new BeanPropertyRowMapper<Position>(Position.class), "已发布",id);
        return publishedPosition;
    }

    public List<Position> findPublishingPosition(int id) {
        String sql = "select * from position where position_publish_state = ? and position_enterprise_id = ?";
        List<Position> publishedPosition = template.query(sql, new BeanPropertyRowMapper<Position>(Position.class), "未发布",id);
        return publishedPosition;
    }

    public void updatePositionState(String positionID, String positionState) {
        String sql = "update position set position_state = ? where position_id = ?";
        template.update(sql,positionState,positionID);
    }

    public void updatePositionPublish(String position_id) {
        String sql = "update position set position_publish_state = ? where position_id = ?";
        template.update(sql,"已发布",Integer.parseInt(position_id));
    }

    public List<Position> findPositionByName(String name, String id) {
        String sql = "select * from position where position_name like ? and position_enterprise_id = ?";
        List<Position> positionList = template.query(sql, new BeanPropertyRowMapper<Position>(Position.class), "%" + name + "%", id);
        return positionList;
    }

//周
public void delete(String id) {
    String sql = "delete from position where position_id=?";
    template.update(sql, id);
}


}
