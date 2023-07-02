state("The Underground Man 2")
 {
     int levelnumber     : "mono-2.0-bdwgc.dll", 0x004A21C0, 0xD0, 0x8, 0x100, 0x10, 0x18, 0x20, 0x18;
	 int headnumber      : "UnityPlayer.dll", 0x017868C0, 0x18, 0x8, 0x10, 0x110, 0x28, 0x68, 0x28, 0x60;
	 int nosenumber      : "UnityPlayer.dll", 0x01788240, 0x28, 0x8, 0x10, 0x28, 0x88, 0x28, 0x60;
	 int antimenustarter : "mono-2.0-bdwgc.dll", 0x00499C40, 0x0, 0x40, 0x0, 0x298, 0x58, 0xB0, 0xE7C;
 }
 
 startup
{
  vars.hui = 0;
}
 
 start 
 {
     if ( current.antimenustarter == 597) vars.hui = 0;
     if (vars.hui == 10) {vars.hui = 0; return true;}
	 if (vars.hui > 0 && vars.hui < 10) vars.hui = vars.hui + 1;
	 if (((old.nosenumber > 0) && (current.nosenumber == 0) && (current.headnumber == 0) && (current.levelnumber == 1))) vars.hui = 1;
 }
 
 split
 {
     return ((old.levelnumber != current.levelnumber) && (current.levelnumber > 0)); // no split after final boss
 }
 
 reset 
 {
    return ((current.headnumber >= 1 ) && (current.headnumber <= 10)); 
 }
 


 
		 