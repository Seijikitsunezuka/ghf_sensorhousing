$fn = 90;

//bottom

module sens_bottom() {
  union () {
     
    difference(){
        union(){
            //cylinder (r1 = 26, r2 = 26, h= 19);
            cylinder (r1 = 38, r2 = 38, h= 4);
            cylinder (r1 = 40, r2 = 40, h= 2);
        }
        translate ([0,0,1.5])cylinder (r1 = 25, r2 = 25, h= 19);
        rotate(120)
            translate ([13,0,0]) 
                cylinder (r1 = 6.5, r2 = 6.5, h= 10);
        rotate(240)
            translate ([13,0,0]) 
                cylinder (r1 = 6.5, r2 = 6.5, h= 10);
        translate ([13,0,0]) 
            cylinder (r1 = 6.5, r2 = 6.5, h= 10);  
        
/*         rotate(60)
            translate ([18,0,0]) 
                cylinder (r1 = 5, r2 = 5, h= 10);
        rotate(180)
            translate ([18,0,0]) 
                cylinder (r1 = 5, r2 = 5, h= 10);
        rotate(300)
            translate ([18,0,0]) 
                cylinder (r1 = 5, r2 = 5, h= 10); 
       
        cylinder (r1 = 5, r2 = 5, h= 10); 
*/        
        rotate(60)
            translate ([30,0,0]) 
                cylinder (r1 = 1.2, r2 = 1.2, h= 10);
        rotate(180)
            translate ([30,0,0]) 
                cylinder (r1 = 1.2, r2 = 1.2, h= 10);
        rotate(300)
            translate ([30,0,0]) 
                cylinder (r1 = 1.2, r2 = 1.2, h= 10);
//外側                
        for ( i = [-8 : 8] )
        { 
            rotate( [0, 0, i * 360 / 60])
            translate ([30,0,0]){
            cube ([8,2,8],true);
          }
        } 
        for ( i = [12 : 28] )
        { 
            rotate( [0, 0, i * 360 / 60])
            translate ([30,0,0]){
            cube ([8,2,8],true);
          }
        }
        for ( i = [32 : 48] )
        { 
            rotate( [0, 0, i * 360 / 60])
            translate ([30,0,0]){
            cube ([8,2,8],true);
          }
        }
 //内側
        difference(){
            cylinder (r1 = 23, r2 = 23, h= 2);
            cylinder (r1 = 15, r2 = 15, h= 2);
            for ( i = [0 : 35] )
            { 
                rotate( [0, 0, i * 360 / 36])
                translate ([15,0,0]){
                cube ([8,1.5,8]);
              }
            } 
        }
    }
    
    difference(){rotate(120)translate ([13,0,0])cylinder (r1 = 8, r2 = 8, h= 1.5);rotate(120)translate ([13,0,0])cylinder (r1 = 6.5, r2 = 6.5, h= 1.5);}
    difference(){rotate(240)translate ([13,0,0])cylinder (r1 = 8, r2 = 8, h= 1.5);rotate(240)translate ([13,0,0])cylinder (r1 = 6.5, r2 = 6.5, h= 1.5);}
    difference(){translate ([13,0,0])cylinder (r1 = 8, r2 = 8, h= 1.5);translate ([13,0,0])cylinder (r1 = 6.5, r2 = 6.5, h= 1.5);}  
    
  }
 };
 sens_bottom();
