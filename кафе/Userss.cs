//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace кафе
{
    using System;
    using System.Collections.Generic;
    
    public partial class Userss
    {
        public int RK_User { get; set; }
        public Nullable<int> FK_Role { get; set; }
        public Nullable<int> FK_Employee { get; set; }
        public string Login { get; set; }
        public string Password { get; set; }
    
        public virtual Employeess Employeess { get; set; }
        public virtual Role Role { get; set; }
    }
}
