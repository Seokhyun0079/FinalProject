package com.music.tuna.crowdFunding.model.dao;

import com.music.tuna.crowdFunding.model.vo.Funding;
import com.music.tuna.payment.dao.PaymentDao;
import com.music.tuna.payment.vo.Goods;
import com.music.tuna.util.SqlSessionFactoryBean;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

@Repository
public class FundingDAO {
    SqlSession sqlSession;
    @Autowired
    PaymentDao paymentDao;
    public FundingDAO(){
        this.sqlSession = SqlSessionFactoryBean.getSqlSessionInstance();
    }
    public int getHotListCount() {
        return sqlSession.selectOne("crowdFunding.getHotListCount");
    }
    public int getNewListCount() {
        return sqlSession.selectOne("crowdFunding.getNewListCount");
    }
    public int getAlmostListCount() {
        return sqlSession.selectOne("crowdFunding.getAlmostListCount");
    }
    public void insertFunding(Funding funding){
        sqlSession.insert("crowdFunding.insertFunding", funding);
    }
    public ArrayList<Funding> selectHotList() {
        return (ArrayList)sqlSession.selectList("crowdFunding.selectHotList");
    }
    public ArrayList<Funding> selectNewList() {
        return (ArrayList)sqlSession.selectList("crowdFunding.selectNewList");
    }
    public ArrayList<Funding> selectAlmostList() {
        return (ArrayList)sqlSession.selectList("crowdFunding.selectAlmostList");
    }
    public Funding selectFunding(int fno){
        List<Funding> list = paymentDao.selectListFunding();
        for(Funding f : list){
            System.out.println("f = " + f);
        }
        return sqlSession.selectOne("crowdFunding.selectFunding", fno);
    }
    public Funding lastInsertedFunding(){
        return sqlSession.selectOne("crowdFunding.lastInsertedFunding");
    }
    public int insertReward(Goods gvo) {
        int result = sqlSession.insert("crowdFunding.insertReward", gvo);
        return result;
    }
    public Goods lastInsertedGoods(){
        Goods goods = sqlSession.selectOne("crowdFunding.lastInsetedGoods");
        return goods;
    }

    public void commit(){
        sqlSession.commit();
    }

}