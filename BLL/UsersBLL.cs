using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Model;
using DAL;

namespace BLL
{
    public class UsersBLL
    {
        /// <summary> 
        /// ��� 
        ///</summary> 
        public static int AddUsers(Users UsersModel)
        {
            return UsersDAL.AddUsers(UsersModel);
        }
        /// <summary> 
        /// ��������ɾ�� 
        ///</summary> 
        public static int DeleteUsers(int Id)
        {
            return UsersDAL.DeleteUsers(Id);
        }
        /// <summary> 
        /// ��ҳ 
        ///</summary> 
        public static List<Users> PageSelectUsers(int pageSize, int pageIndex, string WhereSrc, string PXzd, string PXType)
        {
            pageIndex = pageIndex - 1;
            return UsersDAL.PageSelectUsers(pageSize, pageIndex, WhereSrc, PXzd, PXType);
        }
        /// <summary> 
        /// �޸� 
        ///</summary> 
        public static int UpdateUsers(Users UsersModel)
        {
            return UsersDAL.UpdateUsers(UsersModel);
        }
        /// <summary> 
        /// ��ѯȫ��
        ///</summary>
        public static List<Users> AllData(string NewWHere)
        {
            return UsersDAL.AllData(NewWHere);
        }
        /// <summary> 
        /// ��ѯ���� 
        ///</summary>
        public static int CountNumber(string NewWHere)
        {
            return UsersDAL.CountNumber(NewWHere);
        }
        /// <summary> 
        /// ����������ѯʵ�� 
        ///</summary> 
        public static Users GetIdByUsers(int Id)
        {
            return UsersDAL.GetIdByUsers(Id);
        }
        /// <summary>
        /// �ж��Ƿ��¼�ɹ�
        /// </summary>
        /// <param name="strName"></param>
        /// <param name="strPwd"></param>
        /// <param name="admin"></param>
        /// <returns></returns>
        public static bool GetUsersLogin(string strName, string strPwd, out Users users)
        {

            users = UsersDAL.GetNameByUsers(strName);
            if (users != null && users.U_Pwd == strPwd)
            {
                return true;
            }
            return false;
        }

        //�����֤�Ƿ����
        public static bool IsTrue(string strName)
        {
            Users sud = UsersDAL.GetNameByUsers(strName);
            if (sud != null && sud.U_Id != 0)
            {
                return true;
            }
            return false;
        }



        // �޸���֤�Ƿ����
        public static bool IsTrue(string strName, int iId)
        {
            Users sud = UsersDAL.GetNameByUsers(strName);
            if (sud != null && sud.U_Id != 0 && sud.U_Id != iId)
            {
                return true;
            }
            return false;
        }
     
    }
}