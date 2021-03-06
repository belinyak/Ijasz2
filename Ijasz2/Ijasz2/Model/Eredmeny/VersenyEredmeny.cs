﻿using System.Collections.ObjectModel;

namespace Ijasz2.Model.Eredmeny {
    public class VersenyEredmeny {
        public VersenyEredmeny() {
        }

        public VersenyEredmeny(string versenyAzonosito) {
            VersenyAzonosito = versenyAzonosito;
            Eredmenyek = new Eredmenyek {_eredmenyek = new ObservableCollection<Eredmeny>()};
        }

        public Eredmenyek Eredmenyek { get; set; }
        public string VersenyAzonosito { get; set; }
    }
}