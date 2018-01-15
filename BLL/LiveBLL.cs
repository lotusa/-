using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Model;
using DAL;
using System.Data;

namespace BLL
{
    public class LiveBLL
    {
        /// <summary> 
        /// ��� 
        ///</summary> 
        public static int AddLive(Live LiveModel)
        {
            return LiveDAL.AddLive(LiveModel);
        }
        /// <summary> 
        /// ��������ɾ�� 
        ///</summary> 
        public static int DeleteLive(int Id)
        {
            return LiveDAL.DeleteLive(Id);
        }
        /// <summary> 
        /// ��ҳ 
        ///</summary> 
        public static List<Live> PageSelectLive(int pageSize, int pageIndex, string WhereSrc, string PXzd, string PXType)
        {
            pageIndex = pageIndex - 1;
            return LiveDAL.PageSelectLive(pageSize, pageIndex, WhereSrc, PXzd, PXType);
        }
        
        /// <summary>
        /// ��ҳ 
        ///</summary> 
        public static DataTable PageSelectLive2(int pageSize, int pageIndex, string WhereSrc, string PXzd, string PXType)
        {
            pageIndex = pageIndex - 1;
            return LiveDAL.PageSelectLive2(pageSize, pageIndex, WhereSrc, PXzd, PXType);
        }
        /// <summary> 
        /// �޸� 
        ///</summary> 
        public static int UpdateLive(Live LiveModel)
        {
            return LiveDAL.UpdateLive(LiveModel);
        }
        /// <summary> 
        /// ��ѯȫ��
        ///</summary>
        public static List<Live> AllData(string NewWHere)
        {
            return LiveDAL.AllData(NewWHere);
        }
        
        /// <summary>
        /// �����ѽ���ۼ�
        /// </summary>
        /// <param name="L_Id"></param>
        /// <returns></returns>
        public static decimal LiveSum(string strWhere)
        {
            return LiveDAL.LiveSum(strWhere);
        }
        /// <summary> 
        /// ��ѯ���� 
        ///</summary>
        public static int CountNumber(string NewWHere)
        {
            return LiveDAL.CountNumber(NewWHere);
        }
        /// <summary> 
        /// ��ѯ���� 
        ///</summary>
        public static int CountNumber2(string NewWHere)
        {
            return LiveDAL.CountNumber2(NewWHere);
        }
        /// <summary> 
        /// ����������ѯʵ�� 
        ///</summary> 
        public static Live GetIdByLive(int Id)
        {
            return LiveDAL.GetIdByLive(Id);
        }
    }
}