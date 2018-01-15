using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Model;
using DAL;
using System.Data;

namespace BLL
{
    public class ConsumptionBLL
    {
        /// <summary> 
        /// ��� 
        ///</summary> 
        public static int AddConsumption(Consumption ConsumptionModel)
        {
            return ConsumptionDAL.AddConsumption(ConsumptionModel);
        }
        /// <summary> 
        /// ��������ɾ�� 
        ///</summary> 
        public static int DeleteConsumption(int Id)
        {
            return ConsumptionDAL.DeleteConsumption(Id);
        }
        /// <summary> 
        /// ��ҳ 
        ///</summary> 
        public static List<Consumption> PageSelectConsumption(int pageSize, int pageIndex, string WhereSrc, string PXzd, string PXType)
        {
            pageIndex = pageIndex - 1;
            return ConsumptionDAL.PageSelectConsumption(pageSize, pageIndex, WhereSrc, PXzd, PXType);
        }
        /// <summary>
        /// ��ҳ 
        ///</summary> 
        public static DataTable PageSelectConsumption2(int pageSize, int pageIndex, string WhereSrc, string PXzd, string PXType)
        {
            pageIndex = pageIndex - 1;
            return ConsumptionDAL.PageSelectConsumption2(pageSize, pageIndex, WhereSrc, PXzd, PXType);
        }
        /// <summary> 
        /// �޸� 
        ///</summary> 
        public static int UpdateConsumption(Consumption ConsumptionModel)
        {
            return ConsumptionDAL.UpdateConsumption(ConsumptionModel);
        }
        /// <summary>
        /// �����ۼ�
        /// </summary>
        /// <param name="L_Id"></param>
        /// <returns></returns>
        public static decimal ConsumptionSum(int L_Id)
        {
            return ConsumptionDAL.ConsumptionSum(L_Id);
        }
        /// <summary> 
        /// ��ѯȫ��
        ///</summary>
        public static List<Consumption> AllData(string NewWHere)
        {
            return ConsumptionDAL.AllData(NewWHere);
        }
        /// <summary> 
        /// ��ѯ���� 
        ///</summary>
        public static int CountNumber(string NewWHere)
        {
            return ConsumptionDAL.CountNumber(NewWHere);
        }
        
        /// <summary> 
        /// ��ѯ���� 
        ///</summary>
        public static int CountNumber2(string NewWHere)
        {
            return ConsumptionDAL.CountNumber2(NewWHere);
        }
        /// <summary> 
        /// ����������ѯʵ�� 
        ///</summary> 
        public static Consumption GetIdByConsumption(int Id)
        {
            return ConsumptionDAL.GetIdByConsumption(Id);
        }
    }
}