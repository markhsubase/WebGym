package YuiMember;

import java.security.SecureRandom;

import member.model.MemberBean;
import member.model.memberDAO_old;
import misc.CipherUtils;

public class YuiLoginService {
	public MemberBean checkIDPassword(String id, String password) {
		
		
		String key = "temmujinfitness!"; // 對稱式金鑰
//		byte[] iv = new byte[16]; // 初始向量
		byte[] iv = "0012254776511111".getBytes();
		SecureRandom srnd = new SecureRandom();
//		srnd.nextBytes(iv);
		String plainText = password;
		String cipherText = "";
		String decryptedString = "";
		String SHA1 = "";
		try {
			// encryptString(key, plainText, iv) : 將明文轉換為密文
			cipherText = CipherUtils.encryptString(key, plainText, iv);
			
			SHA1 = CipherUtils.getStringSHA1(cipherText);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		
		memberDAO_old dao = new memberDAO_old();
		MemberBean mb = dao.SelectByPrimaryKey(id);

	
		if (mb != null && SHA1.equals(mb.getM_password())) {
			return mb;
		}


		return null;

	}

}
