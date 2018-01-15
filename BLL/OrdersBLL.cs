using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Model;
using DAL;

namespace BLL
{
    public class OrdersBLL
    {
        /// <summary> 
        /// ��� 
        ///</summary> 
        public static int AddOrders(Orders OrdersModel)
        {
            return OrdersDAL.AddOrders(OrdersModel);
        }
        /// <summary> 
        /// ��������ɾ�� 
        ///</summary> 
        public static int DeleteOrders(int Id)
        {
            return OrdersDAL.DeleteOrders(Id);
        }
        /// <summary> 
        /// ��ҳ 
        ///</summary> 
        public static List<Orders> PageSelectOrders(int pageSize, int pageIndex, string WhereSrc, string PXzd, string PXType)
        {
            pageIndex = pageIndex - 1;
            return OrdersDAL.PageSelectOrders(pageSize, pageIndex, WhereSrc, PXzd, PXType);
        }
        /// <summary> 
        /// �޸� 
        ///</summary> 
        public static int UpdateOrders(Orders OrdersModel)
        {
            return OrdersDAL.UpdateOrders(OrdersModel);
        }
        /// <summary> 
        /// ��ѯȫ��
        ///</summary>
        public static List<Orders> AllData(string NewWHere)
        {
            return OrdersDAL.AllData(NewWHere);
        }
        /// <summary> 
        /// ��ѯ���� 
        ///</summary>
        public static int CountNumber(string NewWHere)
        {
            return OrdersDAL.CountNumber(NewWHere);
        }
        /// <summary> 
        /// ����������ѯʵ�� 
        ///</summary> 
        public static Orders GetIdByOrders(int Id)
        {
            return OrdersDAL.GetIdByOrders(Id);
        }
    }
}