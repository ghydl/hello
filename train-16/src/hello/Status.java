package hello;

import java.util.ArrayList;
import java.util.HashMap;

public class Status {
	private ArrayList<String>zt;
	private HashMap<String, ArrayList<String>>timu;
	
	public Status(){
		 zt=new ArrayList<>();
		 timu=new HashMap<String,ArrayList<String>>();
		 
		 String qk="û��ȥ��Լ";
		 zt.add(qk);
		 
		 String xz1="����Ҫ����";
		 String xz2="������";
		 String xz3="���費��ȥ";
		 String xz4="������������";
		 ArrayList<String> tp =new ArrayList<String>();
	     tp.add(xz1);
	     tp.add(xz2);
	     tp.add(xz3);
	     tp.add(xz4);
	     
	     timu.put(qk,tp);
	     
	}

	public ArrayList<String> getZt() {
		return zt;
	}

	public void setZt(ArrayList<String> zt) {
		this.zt = zt;
	}

	public HashMap<String, ArrayList<String>> getTimu() {
		return timu;
	}

	public void setTimu(HashMap<String, ArrayList<String>> timu) {
		this.timu = timu;
	}
	 

}
