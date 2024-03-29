package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;

import common.DBConnection;
import vo.ExpOnlineVo;
import vo.ExpReviewVo;
import vo.ExpVo;
import vo.ExperienceVo;

public class ExperienceDao {
	public ArrayList<ExperienceVo> getExpList(int idx) {
		Connection conn = DBConnection.getConnection();
		ArrayList<ExperienceVo> listRet = new ArrayList<ExperienceVo>();
		
		String sql = "SELECT * FROM experience WHERE exp_cate_idx=?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, idx);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				int expCateIdx = rs.getInt("exp_cate_idx");
				int expIdx = rs.getInt("exp_idx");
				String expName = rs.getString("exp_name");
				String expLocation = rs.getString("exp_location");
				String time = rs.getString("time");
				String language = rs.getString("language");
				double score = rs.getDouble("score");
				String expHostId = rs.getString("exp_host_id");
				String expType = rs.getString("exp_type");
				String hostImage = rs.getString("host_image");
				String expInfo = rs.getString("exp_info");
				String expInfoEx = rs.getString("exp_info_ex");
				String expExplain = rs.getString("exp_explain");
				String expJoin = rs.getString("exp_join");
				String materialImage = rs.getString("material_image");
				String material = rs.getString("material");
				int age = rs.getInt("age");
				int n = rs.getInt("n");
				String hostIntro = rs.getString("host_intro");
				String hostYear = rs.getString("host_year");
				int cautionIdx = rs.getInt("caution_idx");
				String expImg1 = rs.getString("exp_img1");
				String expImg2 = rs.getString("exp_img2");
				String expImg3 = rs.getString("exp_img3");
				String expImg4 = rs.getString("exp_img4");
				String expImg5 = rs.getString("exp_img5");
				String confirm = rs.getString("confirm");
				int expPrice = rs.getInt("exp_price");
				String expMember = rs.getString("exp_member");
				String lowest = rs.getString("lowest");
				int collectionIdx = rs.getInt("collection_idx");
				
				ExperienceVo vo = new ExperienceVo(expCateIdx, expIdx, expName, expLocation, time, language, score, expHostId, expType, hostImage, expInfo, expInfoEx, expExplain, expJoin, materialImage, material, age, n, hostIntro, hostYear, cautionIdx, expImg1, expImg2, expImg3, expImg4, expImg5, confirm, expPrice, expMember, lowest, collectionIdx);
				listRet.add(vo);
			}
			rs.close();
			pstmt.close();
			conn.close();
		} catch(SQLException e) { e.printStackTrace(); }
		
		System.out.println(listRet);
		return listRet;
	}
	
	public ExperienceVo getExpInfo(int idx) {
		Connection conn = DBConnection.getConnection();
		ExperienceVo vo = null;
		
		String sql = "SELECT * FROM experience WHERE exp_idx=?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, idx);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				int expCateIdx = rs.getInt("exp_cate_idx");
				int expIdx = rs.getInt("exp_idx");
				String expName = rs.getString("exp_name");
				String expLocation = rs.getString("exp_location");
				String time = rs.getString("time");
				String language = rs.getString("language");
				double score = rs.getDouble("score");
				String expHostId = rs.getString("exp_host_id");
				String expType = rs.getString("exp_type");
				String hostImage = rs.getString("host_image");
				String expInfo = rs.getString("exp_info");
				String expInfoEx = rs.getString("exp_info_ex");
				String expExplain = rs.getString("exp_explain");
				String expJoin = rs.getString("exp_join");
				String materialImage = rs.getString("material_image");
				String material = rs.getString("material");
				int age = rs.getInt("age");
				int n = rs.getInt("n");
				String hostIntro = rs.getString("host_intro");
				String hostYear = rs.getString("host_year");
				int cautionIdx = rs.getInt("caution_idx");
				String expImg1 = rs.getString("exp_img1");
				String expImg2 = rs.getString("exp_img2");
				String expImg3 = rs.getString("exp_img3");
				String expImg4 = rs.getString("exp_img4");
				String expImg5 = rs.getString("exp_img5");
				String confirm = rs.getString("confirm");
				int expPrice = rs.getInt("exp_price");
				String expMember = rs.getString("exp_member");
				String lowest = rs.getString("lowest");
				int collectionIdx = rs.getInt("collection_idx");
				
				vo = new ExperienceVo(expCateIdx, expIdx, expName, expLocation, time, language, score, expHostId, expType, hostImage, expInfo, expInfoEx, expExplain, expJoin, materialImage, material, age, n, hostIntro, hostYear, cautionIdx, expImg1, expImg2, expImg3, expImg4, expImg5, confirm, expPrice, expMember, lowest, collectionIdx);
			}
			rs.close();
			pstmt.close();
			conn.close();
		} catch(SQLException e) { e.printStackTrace(); }
		
		return vo;
	}

	public String getExpCateTitle(int idx) {
		Connection conn = DBConnection.getConnection();
		String cateTitle = "";
		
		String sql = "SELECT c.exp_cate_idx, c.exp_cate_title"
				+ " FROM exp_cate c, experience e"
				+ " WHERE c.exp_cate_idx = e.exp_cate_idx AND e.exp_idx=?";
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, idx);
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) {
				// int expCateIdx = rs.getInt("exp_cate_idx");
				// String expCateTitle = rs.getString("exp_cate_title");
				
				// ExpCateVo vo = new ExpCateVo(expCateIdx, expCateTitle);
				cateTitle = rs.getString("exp_cate_title");
			}
			rs.close();
			pstmt.close();
			conn.close();
		} catch(SQLException e) {
			e.printStackTrace();
		}
		
		return cateTitle;
	}
	
	public ArrayList<ExperienceVo> getInfoExpList(int idx) {
		Connection conn = DBConnection.getConnection();
		ArrayList<ExperienceVo> listRet = new ArrayList<ExperienceVo>();
		
		String sql = "SELECT *"
				+ " FROM experience"
				+ " WHERE exp_cate_idx = (SELECT exp_cate_idx FROM experience WHERE exp_idx=?)";
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, idx);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				int expCateIdx = rs.getInt("exp_cate_idx");
				int expIdx = rs.getInt("exp_idx");
				String expName = rs.getString("exp_name");
				String expLocation = rs.getString("exp_location");
				String time = rs.getString("time");
				String language = rs.getString("language");
				double score = rs.getDouble("score");
				String expHostId = rs.getString("exp_host_id");
				String expType = rs.getString("exp_type");
				String hostImage = rs.getString("host_image");
				String expInfo = rs.getString("exp_info");
				String expInfoEx = rs.getString("exp_info_ex");
				String expExplain = rs.getString("exp_explain");
				String expJoin = rs.getString("exp_join");
				String materialImage = rs.getString("material_image");
				String material = rs.getString("material");
				int age = rs.getInt("age");
				int n = rs.getInt("n");
				String hostIntro = rs.getString("host_intro");
				String hostYear = rs.getString("host_year");
				int cautionIdx = rs.getInt("caution_idx");
				String expImg1 = rs.getString("exp_img1");
				String expImg2 = rs.getString("exp_img2");
				String expImg3 = rs.getString("exp_img3");
				String expImg4 = rs.getString("exp_img4");
				String expImg5 = rs.getString("exp_img5");
				String confirm = rs.getString("confirm");
				int expPrice = rs.getInt("exp_price");
				String expMember = rs.getString("exp_member");
				String lowest = rs.getString("lowest");
				int collectionIdx = rs.getInt("collection_idx");
				
				ExperienceVo vo = new ExperienceVo(expCateIdx, expIdx, expName, expLocation, time, language, score, expHostId, expType, hostImage, expInfo, expInfoEx, expExplain, expJoin, materialImage, material, age, n, hostIntro, hostYear, cautionIdx, expImg1, expImg2, expImg3, expImg4, expImg5, confirm, expPrice, expMember, lowest, collectionIdx);
				listRet.add(vo);
			}
			rs.close();
			pstmt.close();
			conn.close();
		} catch(SQLException e) { e.printStackTrace(); }
		
		System.out.println(listRet);
		return listRet;
	}
	
	public ArrayList<ExpReviewVo> getReviewList(int idx) {
		Connection conn = DBConnection.getConnection();
		ArrayList<ExpReviewVo> listRet = new ArrayList<ExpReviewVo>();
		
		String sql = "SELECT r.*, "
				+ " (SELECT count(*) FROM exp_review WHERE exp_idx=?) cnt,"
				+ " (SELECT ROUND(avg(score),2) FROM exp_review WHERE exp_idx=?) avg"
				+ " FROM exp_review r"
				+ " WHERE exp_idx = ?";
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, idx);
			pstmt.setInt(2, idx);
			pstmt.setInt(3, idx);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				int expIdx = rs.getInt("exp_idx");
				int reviewIdx = rs.getInt("review_idx");
				String review = rs.getString("review");
				String userImage = rs.getString("user_image");
				String userName = rs.getString("user_name");
				double score = rs.getDouble("score");
				String writtenDate = rs.getString("written_date");
				int cnt = rs.getInt("cnt");
				double avg = rs.getDouble("avg");
				
				ExpReviewVo vo = new ExpReviewVo(expIdx, reviewIdx, review, userImage, userName, score, writtenDate, cnt, avg);
				if(expIdx == 0) {
					vo = new ExpReviewVo(0, 0, "null", "null", "null", 0.0, "null", 0, 0.0);
				} else {
					listRet.add(vo);
				}
			}
			rs.close();
			pstmt.close();
			conn.close();
		} catch(SQLException e) {
			e.printStackTrace();
		}
		
		return listRet;
	}
	
	public ExpReviewVo getExpReview(int idx) {
		Connection conn = DBConnection.getConnection();
		ExpReviewVo vo = null;
		
		String sql = "SELECT r.*, "
				+ " (SELECT count(*) FROM exp_review WHERE exp_idx=?) cnt,"
				+ " (SELECT ROUND(avg(score),2) FROM exp_review WHERE exp_idx=?) avg"
				+ " FROM exp_review r"
				+ " WHERE exp_idx = ?";
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, idx);
			pstmt.setInt(2, idx);
			pstmt.setInt(3, idx);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				int expIdx = rs.getInt("exp_idx");
				int reviewIdx = rs.getInt("review_idx");
				String review = rs.getString("review");
				String userImage = rs.getString("user_image");
				String userName = rs.getString("user_name");
				double score = rs.getDouble("score");
				String writtenDate = rs.getString("written_date");
				int cnt = rs.getInt("cnt");
				double avg = rs.getDouble("avg");
				
				vo = new ExpReviewVo(expIdx, reviewIdx, review, userImage, userName, score, writtenDate, cnt, avg);
			}
			rs.close();
			pstmt.close();
			conn.close();
		} catch(SQLException e) {
			e.printStackTrace();
		}
		
		return vo;
	}
	
	public ArrayList<ExpOnlineVo> getOnlineList(int idx) {
		Connection conn = DBConnection.getConnection();
		ArrayList<ExpOnlineVo> listRet = new ArrayList<ExpOnlineVo>();
		
		String sql = "SELECT *"
				+ " FROM exp_online"
				+ " WHERE exp_type=(SELECT exp_type FROM experience WHERE exp_idx=?)";
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, idx);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				int onlineIdx = rs.getInt("online_idx");
				String expType = rs.getString("exp_type");
				String onlineTitle = rs.getString("online_title");
				String onlineImage = rs.getString("online_image");
				String onlineInfo = rs.getString("online_info");
				
				ExpOnlineVo vo = new ExpOnlineVo(onlineIdx, expType, onlineTitle, onlineImage, onlineInfo);
				listRet.add(vo);
			}
			rs.close();
			pstmt.close();
			conn.close();
		} catch(SQLException e) {
			e.printStackTrace();
		}
		
		System.out.println(listRet);
		return listRet;
	}
	
	public ExpOnlineVo getExpType(int idx) {
		Connection conn = DBConnection.getConnection();
		ExpOnlineVo vo = null;
		
		String sql = "SELECT *"
				+ " FROM exp_online"
				+ " WHERE exp_type=(SELECT exp_type FROM experience WHERE exp_idx=?)";
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, idx);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				int onlineIdx = rs.getInt("online_idx");
				String expType = rs.getString("exp_type");
				String onlineTitle = rs.getString("online_title");
				String onlineImage = rs.getString("online_image");
				String onlineInfo = rs.getString("online_info");
				
				vo = new ExpOnlineVo(onlineIdx, expType, onlineTitle, onlineImage, onlineInfo);
			}
			rs.close();
			pstmt.close();
			conn.close();
		} catch(SQLException e) {
			e.printStackTrace();
		}
		
		return vo;
	}
}
