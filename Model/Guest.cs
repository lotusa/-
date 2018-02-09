using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Model
{
    [Serializable]
    public class Guest
    {
        #region Model
        private int _G_ID;
        private string _G_Name;
        private string _G_IdCard;
        private int _G_Age;
        private string _G_Gender;
        private string _G_Tel;
        private string _G_Comment;

        public int G_Id
        {
            set { _G_ID = value; }
            get { return _G_ID; }
        }

        public string G_Name
        {
            set { _G_Name = value; }
            get { return _G_Name; }
        }

        /// <summary>
        /// 
        /// </summary>
        public string G_IdCard
        {
            set { _G_IdCard = value; }
            get { return _G_IdCard; }
        }

        public int G_Age
        {
            set { _G_Age = value; }
            get { return _G_Age; }
        }

        public string G_Gender
        {
            set { _G_Gender = value; }
            get { return _G_Gender; }
        }

        /// <summary>
        /// 
        /// </summary>
        public string G_Tel
        {
            set { _G_Tel = value; }
            get { return _G_Tel; }
        }

                /// <summary>
        /// 
        /// </summary>
        public string G_Comment
        {
            set { _G_Comment = value; }
            get { return _G_Comment; }
        }
        
        #endregion
    }
}
