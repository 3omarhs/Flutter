var my_regions = ['Amman', 'Sahab', 'Madaba', 'Zarqa', 'Salt'];
var amman_list = ({
  'الجامعه الاردنية':['https://chat.whatsapp.com/BxCoypLdiGB4gSDGRfojDz', 'https://www.google.com/maps/d/edit?mid=16SpiLf-MJEoVAPRSM9NzEKFQt5TGrvo1&usp=sharing'],
  'رغدان':['https://chat.whatsapp.com/JJRuLRpICUaGYeAO3Avhay', 'https://www.google.com/maps/d/edit?mid=10FnE1eYzdphqKB9BqqbzKJN8D6gmCg_t&usp=sharing'],
  'الجاردنز':['https://chat.whatsapp.com/EJ0IgUUwdykEpRkTrxPJzg', 'https://www.google.com/maps/d/edit?mid=12LcGMFMinHQ30Dnob5MuptTTPEbwbkqg&usp=sharing'],
  'خلدا':['https://chat.whatsapp.com/CBKjNfoU1Fw0bdJJtPwBoh', 'https://www.google.com/maps/d/edit?mid=11mTL9Wg-xVBpPGUEkGd4X62CwdD0TU_j&usp=sharing'],
  'نزال':['https://chat.whatsapp.com/DbWZWpeE5REIN08S0qKNjd', 'https://www.google.com/maps/d/edit?mid=1_vcgrzg1FDwUowIKt6bXl4tQe0yvLIZP&usp=sharing'],
  'ماركا':['https://chat.whatsapp.com/KQ8AGUALcA43TOsEJPambH', 'https://www.google.com/maps/d/edit?mid=1Ce3l1YXFneUhC6iasYpGjCZ4hYqqBiDB&usp=sharing'],
  'صويلح':['https://chat.whatsapp.com/K1fpluhCNAXAzyan1p9CbM', 'https://www.google.com/maps/d/edit?mid=1v4Ll9hyzTeeb5LnVt50RWMXVNxX6aprn&usp=sharing'],
  'طبربور':['https://chat.whatsapp.com/EoNMc39z0w19FRBtDlqIhE', 'https://www.google.com/maps/d/edit?mid=13jUe3IggLNeq-bfQ7lxtp8eRhV3WBIuU&usp=sharing'],
  'ضاحية الرشيد':['https://chat.whatsapp.com/JvRx9wOjoYNGEeidRAsCnm', 'https://www.google.com/maps/d/edit?mid=1JzCOqC0Yqky8cs3ru0zV45tqQWvbfx9k&usp=sharing'],
  'البيادر وادي السير':['https://chat.whatsapp.com/HUO3AWTtF29C19uwPHDTHT', 'https://www.google.com/maps/d/edit?mid=1rqBltrkh_PVEON3h-ankGhAfHqysSAaX&usp=sharing'],
  'الهاشمي':['https://chat.whatsapp.com/LppJT9cpj5b5eVGUW13Zcb', 'https://www.google.com/maps/d/edit?mid=1ivR-jeFU6L2YdY3h91EvGHxB-3uLK-Pr&usp=sharing'],
  'الزهور':['https://chat.whatsapp.com/Dy0FvDdFcxs4D9p5jX4qpW', 'https://www.google.com/maps/d/edit?mid=1I4tnL292BaZ3xl2Qha3o_EqPIVln6oFv&usp=sharing'],
  'الوحدات والاشرفية':['https://chat.whatsapp.com/KBzwhgUC24jEZk9FPEE2rK', 'https://www.google.com/maps/d/edit?mid=1llRTsHuvVVfxZ1Gtvdjgp3G_iTC35mDF&usp=sharing'],
  'القويسمة':['https://chat.whatsapp.com/Jwlbqstvbd3AuJON820G1p', 'https://www.google.com/maps/d/edit?mid=1Akv0YdXCETyUKpiz_E3Hds5_QXCSSsjU&usp=sharing'],
  'ابو علندا':['https://chat.whatsapp.com/EhvaFS1enBT7Ch8EnXhVmq', 'https://www.google.com/maps/d/edit?mid=1R4isGFX3NvVEOX3cS8XSyE_ENhLyf7jP&usp=sharing'],
  'الشرق الاوسط':['https://chat.whatsapp.com/CoFjpQW14DtELqXsTU41Lu', 'https://www.google.com/maps/d/edit?mid=1xRGDmHJIVJakThakcAl5RbaGQjv8wAUF&usp=sharing'],
  'المقابلين':['https://chat.whatsapp.com/GwFblOCXLdqDv1Vv3KvpnK', 'https://www.google.com/maps/d/edit?mid=1fGW58AW7YZT23vEOmkqrMBIxSkkBVmsJ&usp=sharing'],
  'البنيات':['https://chat.whatsapp.com/GwFblOCXLdqDv1Vv3KvpnK', 'https://www.google.com/maps/d/edit?mid=1G_waGow8HaKLZTAbPwK14dDHJLfdkoS4&usp=sharing'],
  'مرج الحمام':['https://chat.whatsapp.com/KQTrH38MtNX0ppaLm6D4dF', 'https://www.google.com/maps/d/edit?mid=1BgGf84cPAHMFYF3xVjgVbXjvN_m98u1W&usp=sharing'],
  'ناعور':['https://chat.whatsapp.com/CeZlAb0oXi7KTOlsGdvrtM', 'https://www.google.com/maps/d/edit?mid=1q3hBuWNhWn12Me9hDx9P-uGmdjStPCpF&usp=sharing'],
  'الدوار الثاني':['https://chat.whatsapp.com/IeosSBlzrrM0Ql8wiF2L9i', 'https://www.google.com/maps/d/edit?mid=1zFUetBN8fkqXPVpiHx_cXQN7X4JehdPP&usp=sharing'],
  'العبدلي':['https://chat.whatsapp.com/GpydUzTb3HrGXIGof7lI8u', 'https://www.google.com/maps/d/edit?mid=1_eZqfXhEjR-LUy3PvXIu2R5pWUORXbRM&usp=sharing'],
  'النزهة':['https://chat.whatsapp.com/KBwvOb4X9pp1AcOILjcxpw', 'https://www.google.com/maps/d/edit?mid=18d5vfp5hS2L4V_86uK32LkuYgG9dxTa2&usp=sharing'],
  'البقعة':['https://chat.whatsapp.com/JOAAuKJ6mV13fRCOc01qiJ', 'https://www.google.com/maps/d/edit?mid=1h8Z6wJp7HLUQds3nFbo545m2v3p2SVFb&usp=sharing'],
  'ابو نصير':['https://chat.whatsapp.com/HhBv13JPnLyDjbXR00uhLw', 'https://www.google.com/maps/d/edit?mid=1P5sHT8wyuw5Wr4ppwQwvMIGsDSZCtFGw&usp=sharing'],
  'شارع عبدالله غوشة':['', 'https://www.google.com/maps/d/edit?mid=1zEgO9qxCApRkCv2H2mkkblzx9TkYo8Jb&usp=sharing'],
  'المدينة الرياضية':['', 'https://www.google.com/maps/d/edit?mid=1xR-gxk5-_e5-63-2IaRYZqvbrIx6j-c6&usp=sharing'],
  'النصر':['', 'https://www.google.com/maps/d/edit?mid=16EixhY-tp1fSrZlUQrUb7325FTumFvwB&usp=sharing'],
  'دوار علي صقرة':['', 'https://www.google.com/maps/d/edit?mid=1YXtKldGKtDXAoNfbiTgahjzBA6aUXwyO&usp=sharing'],
});

var sahab_list = ({
  'سحاب':['https://chat.whatsapp.com/HZh5Jqedxud5PHFXt7VN6X', 'https://www.google.com/maps/d/edit?mid=1Z-JtIoYyTtNkFVtEcK01OkXeXiS5MHke&usp=sharing'],
});

var madaba_list = ({
  'مادبا ام البرك - المخيم':['https://chat.whatsapp.com/GtepyfJsn9rJiFwPj8O95P', 'https://www.google.com/maps/d/edit?mid=1fXzaMCFfK0mZzKWzAhyb__JCvPeIbpuw&usp=sharing'],
  'مادبا الروضة':['https://chat.whatsapp.com/G9M4uKfqsnGCLZF0PgwE2a', 'https://www.google.com/maps/d/edit?mid=1IDJTIHmf4yEW7Ek_wG7M3fA6ibc7ZoxL&usp=sharing'],
  'مادبا غربي':['https://chat.whatsapp.com/HzggOg2lmKuApsyotOJK0Y', 'https://www.google.com/maps/d/edit?mid=1yTyCfUfvN8VTNs87NpvRF6bbJG9aI5fS&usp=sharing'],
  'مادبا شرقي':['https://chat.whatsapp.com/Jsshz2Na67Z7UkeWmiCPBW', 'https://www.google.com/maps/d/edit?mid=1cSQt_JDXJB9jmsJviz52Ga1ojVYDfwpY&usp=sharing'],
});

var zarqa_list = ({
  'الزرقاء':['https://chat.whatsapp.com/IPjKeU27zHB1AcjYcqc4eU', 'https://www.google.com/maps/d/edit?mid=1WB4MdlL-pvu4s918YIedfa-JORDfi-xt&usp=sharing'],
});

var salt_list = ({
  'السلط':['', 'https://www.google.com/maps/d/edit?mid=1MGqC6gvJx2HeWgY4YdCMUyHml1WdqNTl&usp=sharing'],
});