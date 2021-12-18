package com.seolo.check;

import java.util.ArrayList;

public class ChecklistDTO
{
	//○ CheckListDTO 자료형 클래스
	//-- '나의 체크리스트' 게시글에 관한 작업(등록, 수정, 삭제...) 시 사용 
	
	// 주요 속성 구성
	//-- 고유번호, 이름
	private int checkNo, acNo, resNo, dongNo, guNo;
	private String residenceName, dongName, guName;
	
	//-- 주요 속성
	private String checkDate, title, roadAddr, wido, gyeongdo, good, bad, etc, place;
	private int mart, laundry, hospital, food, culture, park, mWolse, deposit, mJeonse, mMaemae, time;
	private ArrayList<String> stickerList;

	//-- 점수: 반려동물, 치안, 대중교통, 교통혼잡도
	private int pet_scoreNo, security_scoreNo, transport_scoreNo, honjap_scoreNo;
	//-- 코멘트: 비밀, 생활편의시설, 반려동물, 치안, 대중교통, 교통혼잡도
	private String secret_co, conv_co, pet_co, security_co, transport_co, honjap_co;
	
	
	// setter, getter 구성
	public int getCheckNo()
	{
		return checkNo;
	}
	public void setCheckNo(int checkNo)
	{
		this.checkNo = checkNo;
	}
	public int getAcNo()
	{
		return acNo;
	}
	public void setAcNo(int acNo)
	{
		this.acNo = acNo;
	}
	public int getResNo()
	{
		return resNo;
	}
	public void setResNo(int resNo)
	{
		this.resNo = resNo;
	}
	public int getDongNo()
	{
		return dongNo;
	}
	public void setDongNo(int dongNo)
	{
		this.dongNo = dongNo;
	}
	public int getGuNo()
	{
		return guNo;
	}
	public void setGuNo(int guNo)
	{
		this.guNo = guNo;
	}
	public String getResidenceName()
	{
		return residenceName;
	}
	public void setResidenceName(String residenceName)
	{
		this.residenceName = residenceName;
	}
	public String getDongName()
	{
		return dongName;
	}
	public void setDongName(String dongName)
	{
		this.dongName = dongName;
	}
	public String getGuName()
	{
		return guName;
	}
	public void setGuName(String guName)
	{
		this.guName = guName;
	}
	public String getCheckDate()
	{
		return checkDate;
	}
	public void setCheckDate(String checkDate)
	{
		this.checkDate = checkDate;
	}
	public String getTitle()
	{
		return title;
	}
	public void setTitle(String title)
	{
		this.title = title;
	}
	public String getRoadAddr()
	{
		return roadAddr;
	}
	public void setRoadAddr(String roadAddr)
	{
		this.roadAddr = roadAddr;
	}
	public String getWido()
	{
		return wido;
	}
	public void setWido(String wido)
	{
		this.wido = wido;
	}
	public String getGyeongdo()
	{
		return gyeongdo;
	}
	public void setGyeongdo(String gyeongdo)
	{
		this.gyeongdo = gyeongdo;
	}
	public String getGood()
	{
		return good;
	}
	public void setGood(String good)
	{
		this.good = good;
	}
	public String getBad()
	{
		return bad;
	}
	public void setBad(String bad)
	{
		this.bad = bad;
	}
	public String getEtc()
	{
		return etc;
	}
	public void setEtc(String etc)
	{
		this.etc = etc;
	}
	public String getPlace()
	{
		return place;
	}
	public void setPlace(String place)
	{
		this.place = place;
	}
	public int getMart()
	{
		return mart;
	}
	public void setMart(int mart)
	{
		this.mart = mart;
	}
	public int getLaundry()
	{
		return laundry;
	}
	public void setLaundry(int laundry)
	{
		this.laundry = laundry;
	}
	public int getHospital()
	{
		return hospital;
	}
	public void setHospital(int hospital)
	{
		this.hospital = hospital;
	}
	public int getFood()
	{
		return food;
	}
	public void setFood(int food)
	{
		this.food = food;
	}
	public int getCulture()
	{
		return culture;
	}
	public void setCulture(int culture)
	{
		this.culture = culture;
	}
	public int getPark()
	{
		return park;
	}
	public void setPark(int park)
	{
		this.park = park;
	}
	public int getmWolse()
	{
		return mWolse;
	}
	public void setmWolse(int mWolse)
	{
		this.mWolse = mWolse;
	}
	public int getDeposit()
	{
		return deposit;
	}
	public void setDeposit(int deposit)
	{
		this.deposit = deposit;
	}
	public int getmJeonse()
	{
		return mJeonse;
	}
	public void setmJeonse(int mJeonse)
	{
		this.mJeonse = mJeonse;
	}
	public int getmMaemae()
	{
		return mMaemae;
	}
	public void setmMaemae(int mMaemae)
	{
		this.mMaemae = mMaemae;
	}
	public int getTime()
	{
		return time;
	}
	public void setTime(int time)
	{
		this.time = time;
	}
	public ArrayList<String> getStickerList()
	{
		return stickerList;
	}
	public void setStickerList(ArrayList<String> stickerList)
	{
		this.stickerList = stickerList;
	}
	public int getPet_scoreNo()
	{
		return pet_scoreNo;
	}
	public void setPet_scoreNo(int pet_scoreNo)
	{
		this.pet_scoreNo = pet_scoreNo;
	}
	public int getSecurity_scoreNo()
	{
		return security_scoreNo;
	}
	public void setSecurity_scoreNo(int security_scoreNo)
	{
		this.security_scoreNo = security_scoreNo;
	}
	public int getTransport_scoreNo()
	{
		return transport_scoreNo;
	}
	public void setTransport_scoreNo(int transport_scoreNo)
	{
		this.transport_scoreNo = transport_scoreNo;
	}
	public int getHonjap_scoreNo()
	{
		return honjap_scoreNo;
	}
	public void setHonjap_scoreNo(int honjap_scoreNo)
	{
		this.honjap_scoreNo = honjap_scoreNo;
	}
	public String getSecret_co()
	{
		return secret_co;
	}
	public void setSecret_co(String secret_co)
	{
		this.secret_co = secret_co;
	}
	public String getConv_co()
	{
		return conv_co;
	}
	public void setConv_co(String conv_co)
	{
		this.conv_co = conv_co;
	}
	public String getPet_co()
	{
		return pet_co;
	}
	public void setPet_co(String pet_co)
	{
		this.pet_co = pet_co;
	}
	public String getSecurity_co()
	{
		return security_co;
	}
	public void setSecurity_co(String security_co)
	{
		this.security_co = security_co;
	}
	public String getTransport_co()
	{
		return transport_co;
	}
	public void setTransport_co(String transport_co)
	{
		this.transport_co = transport_co;
	}
	public String getHonjap_co()
	{
		return honjap_co;
	}
	public void setHonjap_co(String honjap_co)
	{
		this.honjap_co = honjap_co;
	}

}