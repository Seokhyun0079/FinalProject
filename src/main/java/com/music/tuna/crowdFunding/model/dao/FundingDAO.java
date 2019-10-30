package com.music.tuna.crowdFunding.model.dao;

import com.music.tuna.crowdFunding.model.vo.Funding;
import com.music.tuna.crowdFunding.model.vo.FundingList;
import com.music.tuna.payment.dao.PaymentDao;
import com.music.tuna.payment.vo.Goods;
import com.music.tuna.payment.vo.Payment;
import com.music.tuna.util.SqlSessionFactoryBean;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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
    public int insertFunding(Funding funding){
        return sqlSession.insert("crowdFunding.insertFunding", funding);
    }
    public List<Funding> selectHotList() {
        return sqlSession.selectList("crowdFunding.selectHotList");
    }
    public List<Funding> selectNewList() {
        return sqlSession.selectList("crowdFunding.selectNewList");
    }
    public List<Funding> selectAlmostList() {
        return sqlSession.selectList("crowdFunding.selectAlmostList");
    }
    public Funding selectFunding(int fno){
//        List<Funding> list = paymentDao.selectListFunding();
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
    public List<Funding> getHotList(FundingList lvo) {
        return sqlSession.selectList("crowdFunding.getHotList", lvo);
    }
    public List<Funding> getNewList(FundingList lvo) {
        return sqlSession.selectList("crowdFunding.getNewList", lvo);
    }
    public List<Funding> getAlmostList(FundingList lvo) {
        return sqlSession.selectList("crowdFunding.getAlmostList", lvo);
    }
    public int modifyFunding(Funding fd) {
        int result = sqlSession.update("crowdFunding.modifyFunding", fd);
        return result;
    }
    public List selectMyFundingList(String id) {
        return sqlSession.selectList("crowdFunding.myFundingList", id);
    }
    public int updateFunding(Payment p){
        int res = sqlSession.update("crowdFunding.updateFunding", p);
        return res;
    }

    public void commit(){
        sqlSession.commit();
    }
    public void rollback(){
        sqlSession.rollback();
    }

}