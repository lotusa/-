using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Model
{
    [Serializable]
    public class Room
    {
        public Room() { } //无参构造函数


        #region Model 
        private int _R_Id;
        private string _R_No;
        private string _R_Tel;
        private string _R_State;
        private int _Rt_Id;
        private int _R_Beds;
        private int _R_EmptyBeds;

        /// <summary>
        /// 
        /// </summary>
        public int R_Id
        {
            set { _R_Id = value; }
            get { return _R_Id; }
        }

        /// <summary>
        /// 
        /// </summary>
        public string R_No
        {
            set { _R_No = value; }
            get { return _R_No; }
        }

        /// <summary>
        /// 
        /// </summary>
        public string R_Tel
        {
            set { _R_Tel = value; }
            get { return _R_Tel; }
        }

        /// <summary>
        /// 
        /// </summary>
        public string R_State
        {
            set { _R_State = value; }
            get { return _R_State; }
        }

        /// <summary>
        /// 
        /// </summary>
        public int Rt_Id
        {
            set { _Rt_Id = value; }
            get { return _Rt_Id; }
        }

  
        public int R_Beds
        {
            set { _R_Beds = value; }
            get { return _R_Beds; }
        }

        public int R_EmptyBeds
        {
            set { _R_EmptyBeds = value; }
            get { return _R_EmptyBeds; }
        }

        #endregion 
    }
}