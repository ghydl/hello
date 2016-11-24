package hello;

import java.util.ArrayList;
import java.util.HashMap;

public class Status {
	private ArrayList<String>zt;
	private HashMap<String, ArrayList<String>>timu;
	
	public Status(){
		 zt=new ArrayList<>();
		 timu=new HashMap<String,ArrayList<String>>();
		 
		 String qk="没有去赴约";
		 zt.add(qk);
		 
		 String xz1="有事要处理";
		 String xz2="忘记了";
		 String xz3="爸妈不让去";
		 String xz4="朋友有事找我";
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
