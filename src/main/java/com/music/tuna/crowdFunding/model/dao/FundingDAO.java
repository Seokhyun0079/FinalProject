package com.music.tuna.crowdFunding.model.dao;

import com.music.tuna.crowdFunding.model.vo.Funding;
import com.music.tuna.payment.vo.Goods;
import com.music.tuna.util.SqlSessionFactoryBean;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class FundingDAO {
    SqlSession sqlSession;
    public FundingDAO(){
        this.sqlSession = SqlSessionFactoryBean.getSqlSessionInstance();
    }
    public void insertFunding(Funding funding){
        System.out.println("[fDAO] fvo : "+funding.toString());
        sqlSession.insert("crowdFunding.insertFunding", funding);
    }
    public Funding lastInsertedFunding(){
        return (Funding) sqlSession.selectOne("crowdFunding.lastInsertedFunding");
    }
    public int insertReward(Goods gvo) {
        int result = sqlSession.insert("crowdFunding.insertReward", gvo);
        //Goods goods = sqlSession.selectOne("crowdFunding.lastInsetedGoods");
        System.out.println("[fDAO] 리워드 넣기 성공");

        return result;
    }
    public Goods lastinsertedGoods(){
        Goods goods = sqlSession.selectOne("crowdFunding.lastInsetedGoods");
        return goods;
    }

    public void commit(){
        sqlSession.commit();
    }

}
