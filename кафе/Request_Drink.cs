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
    
    public partial class Request_Drink
    {
        public int RK_Request_Drink { get; set; }
        public Nullable<int> FK_Request { get; set; }
        public Nullable<int> FK_Drink { get; set; }
    
        public virtual Drink Drink { get; set; }
        public virtual Request Request { get; set; }
    }
}
