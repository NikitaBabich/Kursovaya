//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Kursovaya
{
    using System;
    using System.Collections.Generic;
    
    public partial class Accused
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Accused()
        {
            this.Cases = new HashSet<Case>();
        }
    
        public int Id { get; set; }
        public string Фамилия { get; set; }
        public string Имя { get; set; }
        public string Отчество { get; set; }
        public System.DateTime Дата_рождения { get; set; }
        public int Пол { get; set; }
        public string Город { get; set; }
        public int Id_сотрудника { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Case> Cases { get; set; }
        public virtual Gender Gender { get; set; }
        public virtual Employe Employe { get; set; }
    }
}