package edu.xmuter.dao;

import edu.xmuter.bean.Used;

import java.util.List;

public interface UsedDao {

    public boolean add_used(Used used);
    public boolean delete_used(Integer used_no);

    public List<Used> get_all_used();


}
