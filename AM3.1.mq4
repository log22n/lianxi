//+------------------------------------------------------------------+
//|                                                      ProjectName |
//|                                      Copyright 2018, CompanyName |
//|                                       http://www.companyname.net |
//+------------------------------------------------------------------+
#property copyright "官网 www.eamql.com 5W+资源免费下载"
#property link      "www.eamql.com"
#property description " "

bool 是否允许模拟账户使用=true; //默认允许模拟账户使用，改为false将限制模拟账户使用！
bool 是否允许实盘账户使用=true; //默认允许实盘账户使用，改为false将限制实盘账户使用！

#property description "期限:到期时间2999.9.30 00:00 支持功能定制 "
extern string  适用品种="EURUSD,AUDUSD,AUDCAD,AUDNZD,USDCHF..." ;//适用品种
string 受限联系QQ号="123456";
bool A_是否限制使用时间=true;
datetime A_允许运行到终止时间=D'2999.09.30 00:00';
bool B_是否开启账号绑定限制他人使用=false;
int B_允许运行此EA的账号[100]= {11111,22222,33333}; //允许多个账号时，账号间请用英文逗号隔开，如下：允许运行此EA的账号[100]={11111,22222,33333,44444,55555};
bool 是否限制运行平台=false;
string 允许运行的平台名称="Synergy Financial Markets Pty Ltd.";
//enum ENUM_TIMEFRAMES      {PERIOD_CURRENT = 0, PERIOD_M1 = 1, PERIOD_M2 = 2, PERIOD_M3 = 3, PERIOD_M4 = 4, PERIOD_M5 = 5, PERIOD_M6 = 6, PERIOD_M10 = 10, PERIOD_M12 = 12, PERIOD_M15 = 15, PERIOD_M20 = 20, PERIOD_M30 = 30, PERIOD_H1 = 60, PERIOD_H2 = 120, PERIOD_H3 = 180, PERIOD_H4 = 240, PERIOD_H6 = 360, PERIOD_H8 = 480, PERIOD_H12 = 720, PERIOD_D1 = 1440, PERIOD_W1 = 10080, PERIOD_MN1 = 43200, };

enum opentime
  {
   A = 1,//开单时区模式
   B = 2,//开单时间间距(秒)模式
   C = 3,//不延迟模式
  };

//------------------
input string  官方网站="www.eamql.com";
extern bool 允许开多=true  ;
extern bool 允许开空=true ;
double On_top_of_this_price_not_Buy_first_order=0  ;
double On_under_of_this_price_not_Sell_first_order=0  ;
double On_top_of_this_price_not_Buy_order=0  ;
double On_under_of_this_price_not_Sell_order=0  ;
extern string 限价开始时间="00:00"  ;
extern string 限价结束时间="24:00"  ;
extern bool 逆势保护开关=true  ;
extern bool 顺势保护开关=true  ;
extern bool 完全对锁时挂上顺势开关=true ;

extern bool 平仓后停止交易=false ;
extern int   整体平仓后X秒再开仓=120  ;
extern double 浮亏X美元启用第二参数=1500  ;
extern int   首单距离=35  ;
extern int   最小距离=35  ;
extern int   第二最小距离=35  ;
extern int   挂单追踪点数=10  ;
extern int   补单间距=35  ;
extern int   第二补单间距=60  ;
input string  三种开单模式="1=开单时区模式;2=开单时间间距(秒)模式;3=不延迟模式";
extern  opentime  开单模式=3  ;
extern  ENUM_TIMEFRAMES  开单时区=1  ;    //sleep
extern int   开单时间间距X秒=60  ;
extern double 单边浮亏超过X不继续加仓=100000  ;
extern double 单边平仓限制=50  ;
extern double 起始手数=0.01  ;
extern double 最大开单手数=100  ;
extern double 累加手数=0  ;
extern double 倍率=1.1  ;
extern int   下单量的小数位=2  ;
extern double 整体平仓金额=0.5  ;
extern bool 单边平仓金额累加开关=true  ;
extern double 单边平仓金额=2  ;
extern double 止损金额=0;
extern int   Magic=21777010;
extern string   Comments="EA_AM"  ;
extern int   最大单量=1000  ;
extern int   点差限制=50  ;
extern int   平台杠杆限制=100  ;
extern string EA开始时间="07:00"  ;
extern string EA结束时间="19:00"  ;

bool      总_bo_1 = true;
bool      总_bo_2 = true;
int       总_in_3 = 1;
int       总_in_4 = 0;
int       总_in_5 = 10;
uint      总_ui_6 = Lime;
uint      总_ui_7 = Blue;
uint      总_ui_8 = Red;
datetime  总_da_9 = 0;
bool      总_bo_10 = true;
bool      总_bo_11 = false;
bool      总_bo_12 = false;
string    总_st_13  =  "";
string    总_st_14  =  "0-off  1-Candle  2-Fractals  >2-pips";
int       总_in_15 = 3;
int       总_in_16 = 20;
int       总_in_17 = 25;
int       总_in_18 = 0;
int       总_in_19 = 15;
int       总_in_20 = 0;
int       总_in_21 = 346856;
int       总_in_22 = 0;
double    总_do_23 = 0.0;
double    总_do_24 = 0.0;
int       总_in_25 = 1482134400;
string    总_st_26  =  "Exness Ltd.";
string    总_st_27  =  "CB Financial Services Limited";
int       总_in_28 = 1;
int       总_in_29 = 2;
double    总_do_30 = 10.0;
uint      总_ui_31 = DimGray;
string    总_st_32  =  "Spread";
int       总_in_33 = 0;
bool      总_bo_34 = true;
string    总_st_35  =  "Button1";
string    总_st_36  =  "Button2";
string    总_st_37  =  "Button5";
int       总_in_38 = 55295;
int       总_in_39 = 16777215;
int       总_in_40 = 65280;
int       总_in_41 = 65280;
int       总_in_42 = 65535;
int       总_in_43 = 12632256;
string    总_st_44  =  "杠杆";
string    总_st_45  =  "Spreads";
int       总_in_46 = 0;
int       总_in_47 = 25;
int       总_in_48 = 180;
bool      总_bo_49 = false;
string    总_st_50  =  "eamql.com";
double    总_do_51 = 0.0;
double    总_do_52 = 0.0;
int       总_in_53 = 0;
int       总_in_54 = 0;
int       总_in_55 = 0;
string    总_st_56  =  "000,000,000";
string    总_st_57  =  "000,000,255";
int       总_in_58 = 40;
int       总_in_59 = 0;
int       总_in_60 = 0;
int       总_in_61 = 0;
datetime  总_da_62 = 0;
datetime  总_da_63 = 0;
datetime  总_da_64 = 0;
datetime  总_da_65 = 0;
datetime  总_da_66 = 0;
datetime  总_da_67 = 0;
datetime  总_da_68 = 0;
int       总_in_69 = 0;


//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
int init()
  {
   int         子_in_1;
   bool        子_bo_2;
   string      子_st_3;
   int         子_in_4;

//----------------------------


   总_st_50 = WindowExpertName() ;

   子_in_1 = 0 ;
   子_bo_2 = false ;
   子_in_4 = 0 ;
   总_in_19 = lizong_8(总_in_19) ;
   if((Digits() == 5 || Digits() == 3))
     {
      总_in_22 = 30 ;
     }
   Comment("");
   总_in_20=MathMax(MarketInfo(Symbol(),33),MarketInfo(Symbol(),14)) + 1;
   if(补单间距 <  总_in_20)
     {
      补单间距 = 总_in_20 ;
     }
   if(首单距离 <  总_in_20)
     {
      首单距离 = 总_in_20 ;
     }
   if(最小距离 <  总_in_20)
     {
      最小距离 = 总_in_20 ;
     }
   if(总_bo_34)
     {
      ObjectCreate(0,总_st_35,OBJ_BUTTON,0,0,0.0);
      ObjectSetInteger(0,总_st_35,OBJPROP_CORNER,2);
      ObjectSetInteger(0,总_st_35,OBJPROP_COLOR,16777215);
      ObjectSetInteger(0,总_st_35,OBJPROP_BGCOLOR,6908265);
      ObjectSetInteger(0,总_st_35,OBJPROP_BORDER_COLOR,16777215);
      ObjectSetInteger(0,总_st_35,OBJPROP_XDISTANCE,0);
      ObjectSetInteger(0,总_st_35,OBJPROP_YDISTANCE,30);
      ObjectSetInteger(0,总_st_35,OBJPROP_XSIZE,55);
      ObjectSetInteger(0,总_st_35,OBJPROP_YSIZE,30);
      ObjectSetString(0,总_st_35,OBJPROP_FONT,"黑体");
      ObjectSetString(0,总_st_35,OBJPROP_TEXT,"平多");
      ObjectSetInteger(0,总_st_35,OBJPROP_FONTSIZE,15);
      ObjectSetInteger(0,总_st_35,OBJPROP_SELECTABLE,1);
      ObjectSetInteger(0,总_st_35,OBJPROP_SELECTED,0);
      ObjectCreate(0,总_st_36,OBJ_BUTTON,0,0,0.0);
      ObjectSetInteger(0,总_st_36,OBJPROP_CORNER,2);
      ObjectSetInteger(0,总_st_36,OBJPROP_COLOR,16777215);
      ObjectSetInteger(0,总_st_36,OBJPROP_BGCOLOR,6908265);
      ObjectSetInteger(0,总_st_36,OBJPROP_BORDER_COLOR,16777215);
      ObjectSetInteger(0,总_st_36,OBJPROP_XDISTANCE,60);
      ObjectSetInteger(0,总_st_36,OBJPROP_YDISTANCE,30);
      ObjectSetInteger(0,总_st_36,OBJPROP_XSIZE,55);
      ObjectSetInteger(0,总_st_36,OBJPROP_YSIZE,30);
      ObjectSetString(0,总_st_36,OBJPROP_FONT,"黑体");
      ObjectSetString(0,总_st_36,OBJPROP_TEXT,"平空");
      ObjectSetInteger(0,总_st_36,OBJPROP_FONTSIZE,15);
      ObjectSetInteger(0,总_st_36,OBJPROP_SELECTABLE,1);
      ObjectSetInteger(0,总_st_36,OBJPROP_SELECTED,0);
      ObjectCreate(0,总_st_37,OBJ_BUTTON,0,0,0.0);
      ObjectSetInteger(0,总_st_37,OBJPROP_CORNER,2);
      ObjectSetInteger(0,总_st_37,OBJPROP_COLOR,16777215);
      ObjectSetInteger(0,总_st_37,OBJPROP_BGCOLOR,6908265);
      ObjectSetInteger(0,总_st_37,OBJPROP_BORDER_COLOR,16777215);
      ObjectSetInteger(0,总_st_37,OBJPROP_XDISTANCE,30);
      ObjectSetInteger(0,总_st_37,OBJPROP_YDISTANCE,70);
      ObjectSetInteger(0,总_st_37,OBJPROP_XSIZE,55);
      ObjectSetInteger(0,总_st_37,OBJPROP_YSIZE,30);
      ObjectSetString(0,总_st_37,OBJPROP_FONT,"黑体");
      ObjectSetString(0,总_st_37,OBJPROP_TEXT,"清仓");
      ObjectSetInteger(0,总_st_37,OBJPROP_FONTSIZE,15);
      ObjectSetInteger(0,总_st_37,OBJPROP_SELECTABLE,1);
      ObjectSetInteger(0,总_st_37,OBJPROP_SELECTED,0);
     }
   子_in_1 = 总_in_5 + 总_in_5 / 2;
   ObjectCreate("Balance",OBJ_LABEL,0,0,0.0,0,0.0,0,0.0);
   ObjectSet("Balance",OBJPROP_CORNER,1.0);
   ObjectSet("Balance",OBJPROP_XDISTANCE,5.0);
   ObjectSet("Balance",OBJPROP_YDISTANCE,子_in_1);
   子_in_1 = 子_in_1 + 总_in_5 * 2;
   ObjectCreate("Equity",OBJ_LABEL,0,0,0.0,0,0.0,0,0.0);
   ObjectSet("Equity",OBJPROP_CORNER,1.0);
   ObjectSet("Equity",OBJPROP_XDISTANCE,5.0);
   ObjectSet("Equity",OBJPROP_YDISTANCE,子_in_1);
   子_in_1 = 子_in_1 + 总_in_5 * 2;
   ObjectCreate("FreeMargin",OBJ_LABEL,0,0,0.0,0,0.0,0,0.0);
   ObjectSet("FreeMargin",OBJPROP_CORNER,1.0);
   ObjectSet("FreeMargin",OBJPROP_XDISTANCE,5.0);
   ObjectSet("FreeMargin",OBJPROP_YDISTANCE,子_in_1);
   子_in_1 = 子_in_1 + 总_in_5 * 2;
   ObjectCreate("ProfitB",OBJ_LABEL,0,0,0.0,0,0.0,0,0.0);
   ObjectSet("ProfitB",OBJPROP_CORNER,1.0);
   ObjectSet("ProfitB",OBJPROP_XDISTANCE,5.0);
   ObjectSet("ProfitB",OBJPROP_YDISTANCE,子_in_1);
   子_in_1 = 子_in_1 + 总_in_5 * 2;
   ObjectCreate("ProfitS",OBJ_LABEL,0,0,0.0,0,0.0,0,0.0);
   ObjectSet("ProfitS",OBJPROP_CORNER,1.0);
   ObjectSet("ProfitS",OBJPROP_XDISTANCE,5.0);
   ObjectSet("ProfitS",OBJPROP_YDISTANCE,子_in_1);
   子_in_1 = 子_in_1 + 总_in_5 * 2;
   ObjectCreate("单边平仓金额累加开关",OBJ_LABEL,0,0,0.0,0,0.0,0,0.0);
   ObjectSet("单边平仓金额累加开关",OBJPROP_CORNER,1.0);
   ObjectSet("单边平仓金额累加开关",OBJPROP_XDISTANCE,5.0);
   ObjectSet("单边平仓金额累加开关",OBJPROP_YDISTANCE,子_in_1);
   子_in_1 = 子_in_1 + 总_in_5 * 3;
   子_bo_2 = false ;
   子_st_3 = "Paramfalse" ;
   单边平仓限制 = -(单边平仓限制);
   单边浮亏超过X不继续加仓 = -(单边浮亏超过X不继续加仓);
   止损金额 = -(止损金额);
   浮亏X美元启用第二参数 = -(浮亏X美元启用第二参数);

   if(总_st_50  !=  WindowExpertName())
     {
      Comment("");
      总_bo_1 = false ;
      总_bo_2 = false ;
      ObjectsDeleteAll(-1,-1);
      if(ObjectFind(总_st_32) <  0)
        {
         ObjectCreate(总_st_32,OBJ_LABEL,0,0,0.0,0,0.0,0,0.0);
         ObjectSet(总_st_32,OBJPROP_CORNER,1.0);
         ObjectSet(总_st_32,OBJPROP_YDISTANCE,260.0);
         ObjectSet(总_st_32,OBJPROP_XDISTANCE,10.0);
         ObjectSetText(总_st_32,"Spread: " + DoubleToString((Ask - Bid) / 总_do_30,1) + " pips",13,"Arial",总_ui_31);
        }
      ObjectSetText(总_st_32,"Spread: " + DoubleToString((Ask - Bid) / 总_do_30,1) + " pips",0,NULL,0xFFFFFFFF);
      WindowRedraw();
      WindowRedraw();
     }
   PlaySound("Starting.wav");
   StringReplace(EA开始时间," ","");
   StringReplace(EA结束时间," ","");
   StringTrimLeft(EA开始时间);
   StringTrimLeft(EA结束时间);
   StringTrimRight(EA开始时间);
   StringTrimRight(EA结束时间);
   if(EA结束时间 == "24:00")
     {
      EA结束时间 = "23:59:59" ;
     }
   StringReplace(限价开始时间," ","");
   StringReplace(限价结束时间," ","");
   StringTrimLeft(限价开始时间);
   StringTrimLeft(限价结束时间);
   StringTrimRight(限价开始时间);
   StringTrimRight(限价结束时间);
   if(限价结束时间 == "24:00")
     {
      限价结束时间 = "23:59:59" ;
     }

   return(0);
  }
//init
//---------------------  ----------------------------------------

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
int start()
  {
   if(是否允许模拟账户使用==false&&IsDemo())
     {
      Alert("账户没有授权，不允许模拟账户使用本EA,请咨询："+string(受限联系QQ号));
      Sleep(1500);
      return 0;
     }
   if(是否允许实盘账户使用==false&&!IsDemo())
     {
      Alert("账户没有授权，不允许实盘账户使用本EA,请咨询："+string(受限联系QQ号));
      Sleep(1500);
      return 0;
     }
   bool isAllowTrade=false;
   static datetime InitTradeTime=0;
   for(int jm=0; jm<100; jm++)
     {
      if(((TimeCurrent()<A_允许运行到终止时间&&TimeLocal()<A_允许运行到终止时间)||!A_是否限制使用时间)&&(AccountNumber()==B_允许运行此EA的账号[jm]||!B_是否开启账号绑定限制他人使用)&&(TerminalCompany()==允许运行的平台名称||!是否限制运行平台))
        {
         isAllowTrade=True;
         break;
        }
     }
//CreateLabel("Label1_YCEA",20,25,"使用期限："+TimeToStr(A_允许运行到终止时间),11,1,ANCHOR_RIGHT,clrDeepSkyBlue);
   if(!isAllowTrade&&AccountNumber()>0)
     {
      if(TimeCurrent()-InitTradeTime>=3600)
        {
         Alert("已停止：请联系QQ"+受限联系QQ号+"，获取使用权限。");
         InitTradeTime=TimeCurrent();
        }
      return(0);
     }

   static int InitBoxTick=0,box=0;
   if(InitBoxTick==0&&!IsTesting())
     {
      box=MessageBox(IntegerToString(AccountNumber())+" - "+Symbol()+" - "+(string)Period()+"\n\n本软件为自主研发的外汇辅助交易工具，提供给投资者学习交流，并不具备印钞机功能，投资市场本身存在风险，所以本软件并不能做到100%盈利，只能在掌握使用方法的前提下，提高交易的胜率，请正确看待并妥善使用软件。\n\n请仔细阅读本说明，感谢您的支持！请问您需要继续安装运行此智能交易插件吗？软件到期日："+TimeToStr(A_允许运行到终止时间),"温馨提示",MB_OKCANCEL);  //确定1，取消2
     }
   if(box==2)
     {
      ExpertRemove();
      return(0);
     }
   if(box==1&&InitBoxTick==0)
     {
      if(MessageBox("我已经阅读风险告知，自愿使用本软件。","",MB_OKCANCEL)==2)
        {
         ExpertRemove();
         return(0);
        }
      InitBoxTick++;
     }

   bool        EA开关;
   double      子_do_2;
   double      子_do_3;
   double      子_do_4;
   double      子_do_5;
   double      子_do_6;
   double      子_do_7;
   int         子_in_8;
   int         子_in_9;
   int         子_in_10;
   int         子_in_11;
   int         子_in_12;
   int         子_in_13;
   int         子_in_14;
   double      子_do_15;
   double      子_do_16;
   double      子_do_17;
   double      子_do_18;
   double      子_do_19;
   double      子_do_20;
   double      子_do_21;
   double      子_do_22;
   double      子_do_23;
   double      子_do_24;
   double      子_do_25;
   double      子_do_26;
   int         子_in_27;
   double      子_do_28;
   string      子_st_29;
   double      子_do_30;
   string      子_st_31;
   double      子_do_32;
   double      子_do_33;
   bool        子_bo_34;
   double      子_do_35;
   double      子_do_36;
   double      子_do_37;
   double      子_do_38;
   double      子_do_39;

//----------------------------
   datetime   临_da_1;
   bool       临_bo_2;
   string     临_st_3;
   string     临_st_4;
   string     临_st_5;
   string     临_st_6;
   datetime   临_da_7;
   bool       临_bo_8;
   string     临_st_9;
   string     临_st_10;
   string     临_st_11;
   string     临_st_12;
   datetime   临_da_13;
   bool       临_bo_14;
   string     临_st_15;
   string     临_st_16;
   string     临_st_17;
   string     临_st_18;
   int        临_in_19;
   double     临_do_20;
   int        临_in_21;
   double     临_do_22;
   int        临_in_23;
   string     临_st_24;
   string     临_st_25;
   int        临_in_26;
   double     临_do_27;
   int        临_in_28;
   double     临_do_29;
   string     临_st_30;
   string     临_st_31;
   int        临_in_32;
   double     临_do_33;
   int        临_in_34;
   double     临_do_35;
   int        临_in_36;
   string     临_st_37;
   string     临_st_38;
   int        临_in_39;
   double     临_do_40;
   int        临_in_41;
   double     临_do_42;
   string     临_st_43;
   int        临_in_44;
   int        临_in_45;
   string     临_st_46;
   int        临_in_47;
   int        临_in_48;
   string     临_st_49;
   int        临_in_50;
   int        临_in_51;
   string     临_st_52;
   int        临_in_53;
   int        临_in_54;
   string     临_st_55;
   string     临_st_56;
   int        临_in_57;
   double     临_do_58;
   int        临_in_59;
   double     临_do_60;
   int        临_in_61;
   string     临_st_62;
   string     临_st_63;
   int        临_in_64;
   double     临_do_65;
   int        临_in_66;
   double     临_do_67;
   string     临_st_68;
   string     临_st_69;
   int        临_in_70;
   double     临_do_71;
   int        临_in_72;
   double     临_do_73;
   int        临_in_74;
   string     临_st_75;
   string     临_st_76;
   int        临_in_77;
   double     临_do_78;
   int        临_in_79;
   double     临_do_80;
   string     临_st_81;
   string     临_st_82;
   int        临_in_83;
   double     临_do_84;
   int        临_in_85;
   double     临_do_86;
   int        临_in_87;
   string     临_st_88;
   string     临_st_89;
   int        临_in_90;
   double     临_do_91;
   int        临_in_92;
   double     临_do_93;
   string     临_st_94;
   string     临_st_95;
   int        临_in_96;
   double     临_do_97;
   int        临_in_98;
   double     临_do_99;
   int        临_in_100;
   string     临_st_101;
   string     临_st_102;
   int        临_in_103;
   double     临_do_104;
   int        临_in_105;
   double     临_do_106;
   int        临_in_107;
   int        临_in_108;
   int        临_in_109;
   double     临_do_110;
   double     临_do_111;
   int        临_in_112;
   int        临_in_113;
   int        临_in_114;
   int        临_in_115;
   double     临_do_116;
   double     临_do_117;
   int        临_in_118;
   datetime   临_da_119;
   bool       临_bo_120;
   datetime   临_da_121;
   bool       临_bo_122;
   datetime   临_da_123;
   bool       临_bo_124;
   datetime   临_da_125;
   bool       临_bo_126;
   datetime   临_da_127;
   bool       临_bo_128;
   datetime   临_da_129;
   bool       临_bo_130;
   int        临_in_131;
   int        临_in_132;
   int        临_in_133;
   int        临_in_134;
   int        临_in_135;
   datetime   临_da_136;
   bool       临_bo_137;
   datetime   临_da_138;
   bool       临_bo_139;
   datetime   临_da_140;
   bool       临_bo_141;
   datetime   临_da_142;
   bool       临_bo_143;
   datetime   临_da_144;
   bool       临_bo_145;
   datetime   临_da_146;
   bool       临_bo_147;
   int        临_in_148;
   int        临_in_149;
   int        临_in_150;
   int        临_in_151;
   int        临_in_152;
   int        临_in_153;
   int        临_in_154;
   int        临_in_155;


   switch(AccountNumber())
     {
      case 5320061 :
         EA开关 = true ;
         break;
      case 200007738 :
         EA开关 = true ;
         break;
      case 10048166 :
         EA开关 = false ;
         break;
      case 7061521 :
         EA开关 = false ;
         break;
      case 12456 :
         EA开关 = false ;
         break;
      default :
         EA开关 = false ;
     }
   if(IsDemo())
     {
      EA开关 = true ;
     }
   if(IsTesting())
     {
      EA开关 = true ;
     }
   /* if (1>2 && !(EA开关) )
     {
     Alert("非法帳戶" + string(AccountNumber()) + "\n" + "请与 QQ 3372807677 联络!");
     总_bo_1 = false ;
     总_bo_2 = false ;
     ObjectsDeleteAll(-1,-1);
     ExpertRemove();
     WindowRedraw();
     return(0);
     }
     */
   临_da_1 = 0;
   if(IsTesting())
     {
      临_da_1 = TimeCurrent();
     }
   else
     {
      临_da_1 = TimeLocal();
     }
   总_da_65 = StringToTime(StringConcatenate(TimeYear(临_da_1),".",TimeMonth(临_da_1),".",TimeDay(临_da_1)," ",限价开始时间)) ;
   总_da_66 = StringToTime(StringConcatenate(TimeYear(临_da_1),".",TimeMonth(临_da_1),".",TimeDay(临_da_1)," ",限价结束时间)) ;
   if(总_da_65 <  总_da_66 && (临_da_1 < 总_da_63 || 临_da_1 > 总_da_66))
     {
      ObjectDelete("HLINE_LONG");
      ObjectDelete("HLINE_SHORT");
      ObjectDelete("HLINE_LONGII");
      ObjectDelete("HLINE_SHORTII");
      临_bo_2 = false;
     }
   else
     {
      if(总_da_65 > 总_da_66 && 临_da_1 <  总_da_65 && 临_da_1 > 总_da_66)
        {
         ObjectDelete("HLINE_LONG");
         ObjectDelete("HLINE_SHORT");
         ObjectDelete("HLINE_LONGII");
         ObjectDelete("HLINE_SHORTII");
         临_bo_2 = false;
        }
      else
        {
         临_bo_2 = true;
        }
     }
   if(临_bo_2)
     {
      if(On_top_of_this_price_not_Buy_first_order!=0.0)
        {
         ObjectCreate(0,"HLINE_LONG",OBJ_HLINE,0,0,On_top_of_this_price_not_Buy_first_order);
         ObjectSet("HLINE_LONG",OBJPROP_STYLE,0.0);
         ObjectSet("HLINE_LONG",OBJPROP_COLOR,10025880.0);
        }
      if(On_under_of_this_price_not_Sell_first_order!=0.0)
        {
         ObjectCreate(0,"HLINE_SHORT",OBJ_HLINE,0,0,On_under_of_this_price_not_Sell_first_order);
         ObjectSet("HLINE_SHORT",OBJPROP_STYLE,0.0);
         ObjectSet("HLINE_SHORT",OBJPROP_COLOR,16711935.0);
        }
      if(On_top_of_this_price_not_Buy_order!=0.0)
        {
         ObjectCreate(0,"HLINE_LONGII",OBJ_HLINE,0,0,On_top_of_this_price_not_Buy_order);
         ObjectSet("HLINE_LONGII",OBJPROP_STYLE,2.0);
         ObjectSet("HLINE_LONGII",OBJPROP_COLOR,10025880.0);
        }
      if(On_under_of_this_price_not_Sell_order!=0.0)
        {
         ObjectCreate(0,"HLINE_SHORTII",OBJ_HLINE,0,0,On_under_of_this_price_not_Sell_order);
         ObjectSet("HLINE_SHORTII",OBJPROP_STYLE,2.0);
         ObjectSet("HLINE_SHORTII",OBJPROP_COLOR,16711935.0);
        }
     }
   子_do_2 = 0.0 ;
   子_do_3 = 0.0 ;
   子_do_4 = 0.0 ;
   子_do_5 = 0.0 ;
   子_do_6 = 0.0 ;
   子_do_7 = 0.0 ;
   子_in_8 = 0 ;
   子_in_9 = 0 ;
   子_in_10 = 0 ;
   子_in_11 = 0 ;
   子_in_12 = 0 ;
   子_in_13 = 0 ;
   子_in_14 = 0 ;
   子_do_15 = 0.0 ;
   子_do_16 = 0.0 ;
   子_do_17 = 0.0 ;
   子_do_18 = 0.0 ;
   子_do_19 = 0.0 ;
   子_do_20 = 0.0 ;
   子_do_21 = 0.0 ;
   子_do_22 = 0.0 ;
   子_do_23 = 0.0 ;
   子_do_24 = 0.0 ;
   子_do_25 = 0.0 ;
   子_do_26 = 0.0 ;
   子_in_27 = 0 ;
   子_do_28 = 0.0 ;
   子_do_30 = 0.0 ;
   子_do_32 = 0.0 ;
   子_do_33 = 0.0 ;
   子_bo_34 = false ;
   for(子_in_27 = 0 ; 子_in_27 < OrdersTotal() ; 子_in_27 = 子_in_27 + 1)
     {
      if(!(OrderSelect(子_in_27,SELECT_BY_POS,MODE_TRADES)) || OrderSymbol() != Symbol() || Magic != OrderMagicNumber())
         continue;
      子_in_12 = OrderType() ;
      子_do_7 = OrderLots() ;
      子_do_2 = NormalizeDouble(OrderOpenPrice(),Digits()) ;
      if(子_in_12 == 4)
        {
         子_in_10 = 子_in_10 + 1;
         if((子_do_15<子_do_2 || 子_do_15==0.0))
           {
            子_do_15 = 子_do_2 ;
           }
         子_in_13 = OrderTicket() ;
         子_do_19 = 子_do_2 ;
        }
      if(子_in_12 == 5)
        {
         子_in_11 = 子_in_11 + 1;
         if((子_do_18>子_do_2 || 子_do_18==0.0))
           {
            子_do_18 = 子_do_2 ;
           }
         子_in_14 = OrderTicket() ;
         子_do_20 = 子_do_2 ;
        }
      if(子_in_12 == 0)
        {
         子_in_8 = 子_in_8 + 1;
         子_do_5 = 子_do_5 + 子_do_7 ;
         子_do_22 = 子_do_2 * 子_do_7 + 子_do_22 ;
         if((子_do_15<子_do_2 || 子_do_15==0.0))
           {
            子_do_15 = 子_do_2 ;
           }
         if((子_do_16>子_do_2 || 子_do_16==0.0))
           {
            子_do_16 = 子_do_2 ;
           }
         子_do_4 = OrderProfit() + OrderSwap() + OrderCommission() + 子_do_4 ;
        }
      if(子_in_12 != 1)
         continue;
      子_in_9 = 子_in_9 + 1;
      子_do_6 = 子_do_6 + 子_do_7 ;
      子_do_21 = 子_do_2 * 子_do_7 + 子_do_21 ;
      if((子_do_18>子_do_2 || 子_do_18==0.0))
        {
         子_do_18 = 子_do_2 ;
        }
      if((子_do_17<子_do_2 || 子_do_17==0.0))
        {
         子_do_17 = 子_do_2 ;
        }
      子_do_3 = OrderProfit() + OrderSwap() + OrderCommission() + 子_do_3 ;
     }
   if(子_do_4>0.0)
     {
      ObjectSetInteger(0,总_st_35,OBJPROP_BGCOLOR,17919);
     }
   else
     {
      ObjectSetInteger(0,总_st_35,OBJPROP_BGCOLOR,6908265);
     }
   if(子_do_3>0.0)
     {
      ObjectSetInteger(0,总_st_36,OBJPROP_BGCOLOR,17919);
     }
   else
     {
      ObjectSetInteger(0,总_st_36,OBJPROP_BGCOLOR,6908265);
     }
   if(子_do_4 + 子_do_3>0.0)
     {
      ObjectSetInteger(0,总_st_37,OBJPROP_BGCOLOR,17919);
     }
   else
     {
      ObjectSetInteger(0,总_st_37,OBJPROP_BGCOLOR,6908265);
     }
   if(子_do_5>0.0 && 子_do_6 / 子_do_5>3.0 && 子_do_6 - 子_do_5>0.2)
     {
      总_bo_11 = true ;
     }
   else
     {
      总_bo_11 = false ;
     }
   if(子_do_6>0.0 && 子_do_5 / 子_do_6>3.0 && 子_do_5 - 子_do_6>0.2)
     {
      总_bo_12 = true ;
     }
   else
     {
      总_bo_12 = false ;
     }
   子_do_35 = 0.0 ;
   子_do_36 = 0.0 ;
   子_do_37 = 0.0 ;
   子_do_38 = 0.0 ;
   子_do_35 = iHigh(Symbol(),总_in_3,0) - iLow(Symbol(),总_in_3,5) ;
   子_do_37 = iLow(Symbol(),总_in_3,0) - iHigh(Symbol(),总_in_3,5) ;
   子_do_36 = int(子_do_35 / Point()) ;
   子_do_38 = MathAbs(子_do_37 / Point()) ;
   if((AccountLeverage() < 平台杠杆限制 || IsTradeAllowed() == false || IsExpertEnabled() == false || IsStopped() || 子_in_8 + 子_in_9 >= 最大单量 || MarketInfo(Symbol(),13)>点差限制 || (总_in_4 != 0 && 子_do_36>=总_in_4) || (总_in_4 != 0 && 子_do_38>=总_in_4)))
     {
      总_bo_1 = false ;
      总_bo_2 = false ;
      临_st_3 = "Arial";
      临_st_4 = "这个EA已经停止工作了 ! ";
      if(ObjectFind("Stop") == -1)
        {
         ObjectCreate("Stop",OBJ_LABEL,0,0,0.0,0,0.0,0,0.0);
         ObjectSet("Stop",OBJPROP_CORNER,总_in_46);
         ObjectSet("Stop",OBJPROP_XDISTANCE,总_in_47);
         ObjectSet("Stop",OBJPROP_YDISTANCE,总_in_48 + 30);
        }
      ObjectSetText("Stop",临_st_4,总_in_5,临_st_3,总_ui_31);
     }
   else
     {
      总_bo_1 = true ;
      总_bo_2 = true ;
      临_st_5 = "Arial";
      临_st_6 = "";
      if(ObjectFind("Stop") == -1)
        {
         ObjectCreate("Stop",OBJ_LABEL,0,0,0.0,0,0.0,0,0.0);
         ObjectSet("Stop",OBJPROP_CORNER,总_in_46);
         ObjectSet("Stop",OBJPROP_XDISTANCE,总_in_47);
         ObjectSet("Stop",OBJPROP_YDISTANCE,总_in_48 + 30);
        }
      ObjectSetText("Stop",临_st_6,总_in_5,临_st_5,总_ui_31);
     }
   临_da_7 = 0;
   if(IsTesting())
     {
      临_da_7 = TimeCurrent();
     }
   else
     {
      临_da_7 = TimeLocal();
     }
   总_da_63 = StringToTime(StringConcatenate(TimeYear(临_da_7),".",TimeMonth(临_da_7),".",TimeDay(临_da_7)," ",EA开始时间)) ;
   总_da_64 = StringToTime(StringConcatenate(TimeYear(临_da_7),".",TimeMonth(临_da_7),".",TimeDay(临_da_7)," ",EA结束时间)) ;
   if(总_da_63 <  总_da_64 && (临_da_7 < 总_da_63 || 临_da_7 > 总_da_64))
     {
      临_bo_8 = false;
     }
   else
     {
      if(总_da_63 > 总_da_64 && 临_da_7 <  总_da_63 && 临_da_7 > 总_da_64)
        {
         临_bo_8 = false;
        }
      else
        {
         临_bo_8 = true;
        }
     }
   if(!(临_bo_8))
     {
      临_st_9 = "Arial";
      临_st_10 = "Time out,This EA has stop open order";
      if(ObjectFind("Stop") == -1)
        {
         ObjectCreate("Stop",OBJ_LABEL,0,0,0.0,0,0.0,0,0.0);
         ObjectSet("Stop",OBJPROP_CORNER,总_in_46);
         ObjectSet("Stop",OBJPROP_XDISTANCE,总_in_47);
         ObjectSet("Stop",OBJPROP_YDISTANCE,总_in_48 + 30);
        }
      ObjectSetText("Stop",临_st_10,总_in_5,临_st_9,总_ui_31);
     }
   if(总_st_50  !=  WindowExpertName())
     {
      总_bo_1 = false ;
      总_bo_2 = false ;
      临_st_11 = "Arial";
      临_st_12 = "这个EA已经停止工作了 ! ";
      if(ObjectFind("Stop") == -1)
        {
         ObjectCreate("Stop",OBJ_LABEL,0,0,0.0,0,0.0,0,0.0);
         ObjectSet("Stop",OBJPROP_CORNER,总_in_46);
         ObjectSet("Stop",OBJPROP_XDISTANCE,总_in_47);
         ObjectSet("Stop",OBJPROP_YDISTANCE,总_in_48 + 30);
        }
      ObjectSetText("Stop",临_st_12,总_in_5,临_st_11,总_ui_31);
     }
   if(TimeCurrent() <  总_da_9)
     {
      临_da_13 = 0;
      if(IsTesting())
        {
         临_da_13 = TimeCurrent();
        }
      else
        {
         临_da_13 = TimeLocal();
        }
      总_da_63 = StringToTime(StringConcatenate(TimeYear(临_da_13),".",TimeMonth(临_da_13),".",TimeDay(临_da_13)," ",EA开始时间)) ;
      总_da_64 = StringToTime(StringConcatenate(TimeYear(临_da_13),".",TimeMonth(临_da_13),".",TimeDay(临_da_13)," ",EA结束时间)) ;
      if(总_da_63 <  总_da_64 && (临_da_13 < 总_da_63 || 临_da_13 > 总_da_64))
        {
         临_bo_14 = false;
        }
      else
        {
         if(总_da_63 > 总_da_64 && 临_da_13 <  总_da_63 && 临_da_13 > 总_da_64)
           {
            临_bo_14 = false;
           }
         else
           {
            临_bo_14 = true;
           }
        }
      if(临_bo_14)
        {
         总_bo_1 = false ;
         总_bo_2 = false ;
         临_st_15 = "Arial";
         临_st_16 = "这个EA已经停止工作了 !  " + string(整体平仓后X秒再开仓) + "second! ";
         if(ObjectFind("Stop") == -1)
           {
            ObjectCreate("Stop",OBJ_LABEL,0,0,0.0,0,0.0,0,0.0);
            ObjectSet("Stop",OBJPROP_CORNER,总_in_46);
            ObjectSet("Stop",OBJPROP_XDISTANCE,总_in_47);
            ObjectSet("Stop",OBJPROP_YDISTANCE,总_in_48 + 30);
           }
         ObjectSetText("Stop",临_st_16,总_in_5,临_st_15,总_ui_31);
        }
     }
   if(平仓后停止交易 == 1 && 子_in_8 == 0)
     {
      总_bo_1 = false ;
     }
   if(平仓后停止交易 == 1 && 子_in_9 == 0)
     {
      总_bo_2 = false ;
     }
   ObjectDelete("SLb");
   ObjectDelete("SLs");
   if(子_in_8 > 0)
     {
      子_do_23 = NormalizeDouble(子_do_22 / 子_do_5,Digits()) ;
      ObjectCreate("SLb",OBJ_ARROW,0,Time[0],子_do_23,0,0.0,0,0.0);
      ObjectSet("SLb",OBJPROP_ARROWCODE,6.0);
      ObjectSet("SLb",OBJPROP_COLOR,总_ui_7);
     }
   if(子_in_9 > 0)
     {
      子_do_24 = NormalizeDouble(子_do_21 / 子_do_6,Digits()) ;
      ObjectCreate("SLs",OBJ_ARROW,0,Time[0],子_do_24,0,0.0,0,0.0);
      ObjectSet("SLs",OBJPROP_ARROWCODE,6.0);
      ObjectSet("SLs",OBJPROP_COLOR,总_ui_8);
     }
   ObjectSetText("Char.op",CharToString(74),总_in_5 + 2,"Wingdings",Red);
   子_do_39 = 子_do_4 + 子_do_3 ;
   if(平仓后停止交易 == 1 && 子_do_39>=整体平仓金额)
     {
      总_bo_1 = false ;
      总_bo_2 = false ;
      临_st_17 = "Ticket";
      临_st_18 = "sell";
      临_in_19 = 0;
      临_do_20 = 0.0;
      for(临_in_21 = OrdersTotal() - 1 ; 临_in_21 >= 0 ; 临_in_21 = 临_in_21 - 1)
        {
         if(!(OrderSelect(临_in_21,SELECT_BY_POS,MODE_TRADES)) || OrderSymbol() != Symbol() || OrderMagicNumber() != Magic)
            continue;

         if(临_st_18 == "buy" && OrderType() == 0 && OrderTicket() > 临_in_19)
           {
            OrderOpenTime();
            OrderOpenPrice();
            临_do_20 = OrderLots();
            临_in_19 = OrderTicket();
           }
         if(临_st_18 != "sell" || OrderType() != 1 || OrderTicket() <= 临_in_19)
            continue;
         OrderOpenTime();
         OrderOpenPrice();
         临_do_20 = OrderLots();
         临_in_19 = OrderTicket();
        }
      if(临_st_17 == "Ticket")
        {
         临_do_22 = 临_in_19;
        }
      else
        {
         if(临_st_17 == "Lots")
           {
            临_do_22 = 临_do_20;
           }
         else
           {
            临_do_22 = 0.0;
           }
        }
      临_in_23 = 临_do_22;
      临_st_24 = "Ticket";
      临_st_25 = "buy";
      临_in_26 = 0;
      临_do_27 = 0.0;
      for(临_in_28 = OrdersTotal() - 1 ; 临_in_28 >= 0 ; 临_in_28 = 临_in_28 - 1)
        {
         if(!(OrderSelect(临_in_28,SELECT_BY_POS,MODE_TRADES)) || OrderSymbol() != Symbol() || OrderMagicNumber() != Magic)
            continue;

         if(临_st_25 == "buy" && OrderType() == 0 && OrderTicket() > 临_in_26)
           {
            OrderOpenTime();
            OrderOpenPrice();
            临_do_27 = OrderLots();
            临_in_26 = OrderTicket();
           }
         if(临_st_25 != "sell" || OrderType() != 1 || OrderTicket() <= 临_in_26)
            continue;
         OrderOpenTime();
         OrderOpenPrice();
         临_do_27 = OrderLots();
         临_in_26 = OrderTicket();
        }
      if(临_st_24 == "Ticket")
        {
         临_do_29 = 临_in_26;
        }
      else
        {
         if(临_st_24 == "Lots")
           {
            临_do_29 = 临_do_27;
           }
         else
           {
            临_do_29 = 0.0;
           }
        }
      if(OrderCloseBy(临_do_29,临_in_23,0xFFFFFFFF))
        {
         do
           {
            临_st_30 = "Ticket";
            临_st_31 = "sell";
            临_in_32 = 0;
            临_do_33 = 0.0;
            for(临_in_34 = OrdersTotal() - 1 ; 临_in_34 >= 0 ; 临_in_34 = 临_in_34 - 1)
              {
               if(!(OrderSelect(临_in_34,SELECT_BY_POS,MODE_TRADES)) || OrderSymbol() != Symbol() || OrderMagicNumber() != Magic)
                  continue;

               if(临_st_31 == "buy" && OrderType() == 0 && OrderTicket() > 临_in_32)
                 {
                  OrderOpenTime();
                  OrderOpenPrice();
                  临_do_33 = OrderLots();
                  临_in_32 = OrderTicket();
                 }
               if(临_st_31 != "sell" || OrderType() != 1 || OrderTicket() <= 临_in_32)
                  continue;
               OrderOpenTime();
               OrderOpenPrice();
               临_do_33 = OrderLots();
               临_in_32 = OrderTicket();
              }
            if(临_st_30 == "Ticket")
              {
               临_do_35 = 临_in_32;
              }
            else
              {
               if(临_st_30 == "Lots")
                 {
                  临_do_35 = 临_do_33;
                 }
               else
                 {
                  临_do_35 = 0.0;
                 }
              }
            临_in_36 = 临_do_35;
            临_st_37 = "Ticket";
            临_st_38 = "buy";
            临_in_39 = 0;
            临_do_40 = 0.0;
            for(临_in_41 = OrdersTotal() - 1 ; 临_in_41 >= 0 ; 临_in_41 = 临_in_41 - 1)
              {
               if(!(OrderSelect(临_in_41,SELECT_BY_POS,MODE_TRADES)) || OrderSymbol() != Symbol() || OrderMagicNumber() != Magic)
                  continue;

               if(临_st_38 == "buy" && OrderType() == 0 && OrderTicket() > 临_in_39)
                 {
                  OrderOpenTime();
                  OrderOpenPrice();
                  临_do_40 = OrderLots();
                  临_in_39 = OrderTicket();
                 }
               if(临_st_38 != "sell" || OrderType() != 1 || OrderTicket() <= 临_in_39)
                  continue;
               OrderOpenTime();
               OrderOpenPrice();
               临_do_40 = OrderLots();
               临_in_39 = OrderTicket();
              }
            if(临_st_37 == "Ticket")
              {
               临_do_42 = 临_in_39;
              }
            else
              {
               if(临_st_37 == "Lots")
                 {
                  临_do_42 = 临_do_40;
                 }
               else
                 {
                  临_do_42 = 0.0;
                 }
              }
           }
         while(OrderCloseBy(临_do_42,临_in_36,0xFFFFFFFF));
        }
      lizong_7(0);
      if(ObjectFind(总_st_32) <  0)
        {
         ObjectCreate(总_st_32,OBJ_LABEL,0,0,0.0,0,0.0,0,0.0);
         ObjectSet(总_st_32,OBJPROP_CORNER,1.0);
         ObjectSet(总_st_32,OBJPROP_YDISTANCE,260.0);
         ObjectSet(总_st_32,OBJPROP_XDISTANCE,10.0);
         ObjectSetText(总_st_32,"Spread: " + DoubleToString((Ask - Bid) / 总_do_30,1) + " pips",13,"Arial",总_ui_31);
        }
      ObjectSetText(总_st_32,"Spread: " + DoubleToString((Ask - Bid) / 总_do_30,1) + " pips",0,NULL,0xFFFFFFFF);
      WindowRedraw();
      WindowRedraw();
     }
   if(平仓后停止交易 == false)
     {
      if(顺势保护开关 == true)
        {
         临_st_43 = "buy";
         临_in_44 = 0;
         for(临_in_45 = OrdersTotal() - 1 ; 临_in_45 >= 0 ; 临_in_45=临_in_45 - 1)
           {
            if(!(OrderSelect(临_in_45,SELECT_BY_POS,MODE_TRADES)) || Symbol() != OrderSymbol() || OrderMagicNumber() != Magic || OrderComment() != Comments+"SS")
               continue;

            if(临_st_43 == "buy" && OrderType() == 0)
              {
               临_in_44 = 临_in_44 + 1;
              }
            if(临_st_43 != "sell" || OrderType() != 1)
               continue;
            临_in_44 = 临_in_44 + 1;
           }
         if(临_in_44 <  1)
           {
            临_st_46 = "sell";
            临_in_47 = 0;
            for(临_in_48 = OrdersTotal() - 1 ; 临_in_48 >= 0 ; 临_in_48=临_in_48 - 1)
              {
               if(!(OrderSelect(临_in_48,SELECT_BY_POS,MODE_TRADES)) || Symbol() != OrderSymbol() || OrderMagicNumber() != Magic || OrderComment() !=Comments+"SS")
                  continue;

               if(临_st_46 == "buy" && OrderType() == 0)
                 {
                  临_in_47 = 临_in_47 + 1;
                 }
               if(临_st_46 != "sell" || OrderType() != 1)
                  continue;
               临_in_47 = 临_in_47 + 1;
              }

           }
        }
      if((临_in_47 < 1 || 顺势保护开关 == false) && 子_do_4>单边平仓限制 && 子_do_3>单边平仓限制)
        {
         ObjectSetText("Char.op",CharToString(251),总_in_5 + 2,"Wingdings",Silver);
         if(((单边平仓金额累加开关 == true && 子_do_4>单边平仓金额 * 子_in_8) || (单边平仓金额累加开关 == false && 子_do_4>单边平仓金额)))
           {
            Print("Buy 单边平仓金额累加开关 ",子_do_4);
            lizong_7(1);
            return(0);
           }
         if(((单边平仓金额累加开关 == true && 子_do_3>单边平仓金额 * 子_in_9) || (单边平仓金额累加开关 == false && 子_do_3>单边平仓金额)))
           {
            Print("Sell 单边平仓金额累加开关 ",子_do_3);
            lizong_7(-1);
            return(0);
           }
        }
      if(顺势保护开关 == true)
        {
         临_st_49 = "buy";
         临_in_50 = 0;
         for(临_in_51 = OrdersTotal() - 1 ; 临_in_51 >= 0 ; 临_in_51=临_in_51 - 1)
           {
            if(!(OrderSelect(临_in_51,SELECT_BY_POS,MODE_TRADES)) || Symbol() != OrderSymbol() || OrderMagicNumber() != Magic || OrderComment() != Comments+"SS")
               continue;

            if(临_st_49 == "buy" && OrderType() == 0)
              {
               临_in_50 = 临_in_50 + 1;
              }
            if(临_st_49 != "sell" || OrderType() != 1)
               continue;
            临_in_50 = 临_in_50 + 1;
           }

         临_st_52 = "sell";
         临_in_53 = 0;
         for(临_in_54 = OrdersTotal() - 1 ; 临_in_54 >= 0 ; 临_in_54=临_in_54 - 1)
           {
            if(!(OrderSelect(临_in_54,SELECT_BY_POS,MODE_TRADES)) || Symbol() != OrderSymbol() || OrderMagicNumber() != Magic || OrderComment() != Comments+"SS")
               continue;

            if(临_st_52 == "buy" && OrderType() == 0)
              {
               临_in_53 = 临_in_53 + 1;
              }
            if(临_st_52 != "sell" || OrderType() != 1)
               continue;
            临_in_53 = 临_in_53 + 1;
           }
         if((临_in_50 > 0 || 临_in_53 > 0) && 子_do_4 + 子_do_3>=整体平仓金额)
           {
            临_st_55 = "Ticket";
            临_st_56 = "sell";
            临_in_57 = 0;
            临_do_58 = 0.0;
            for(临_in_59 = OrdersTotal() - 1 ; 临_in_59 >= 0 ; 临_in_59 = 临_in_59 - 1)
              {
               if(!(OrderSelect(临_in_59,SELECT_BY_POS,MODE_TRADES)) || OrderSymbol() != Symbol() || OrderMagicNumber() != Magic)
                  continue;

               if(临_st_56 == "buy" && OrderType() == 0 && OrderTicket() > 临_in_57)
                 {
                  OrderOpenTime();
                  OrderOpenPrice();
                  临_do_58 = OrderLots();
                  临_in_57 = OrderTicket();
                 }
               if(临_st_56 != "sell" || OrderType() != 1 || OrderTicket() <= 临_in_57)
                  continue;
               OrderOpenTime();
               OrderOpenPrice();
               临_do_58 = OrderLots();
               临_in_57 = OrderTicket();
              }
            if(临_st_55 == "Ticket")
              {
               临_do_60 = 临_in_57;
              }
            else
              {
               if(临_st_55 == "Lots")
                 {
                  临_do_60 = 临_do_58;
                 }
               else
                 {
                  临_do_60 = 0.0;
                 }
              }
            临_in_61 = 临_do_60;
            临_st_62 = "Ticket";
            临_st_63 = "buy";
            临_in_64 = 0;
            临_do_65 = 0.0;
            for(临_in_66 = OrdersTotal() - 1 ; 临_in_66 >= 0 ; 临_in_66 = 临_in_66 - 1)
              {
               if(!(OrderSelect(临_in_66,SELECT_BY_POS,MODE_TRADES)) || OrderSymbol() != Symbol() || OrderMagicNumber() != Magic)
                  continue;

               if(临_st_63 == "buy" && OrderType() == 0 && OrderTicket() > 临_in_64)
                 {
                  OrderOpenTime();
                  OrderOpenPrice();
                  临_do_65 = OrderLots();
                  临_in_64 = OrderTicket();
                 }
               if(临_st_63 != "sell" || OrderType() != 1 || OrderTicket() <= 临_in_64)
                  continue;
               OrderOpenTime();
               OrderOpenPrice();
               临_do_65 = OrderLots();
               临_in_64 = OrderTicket();
              }
            if(临_st_62 == "Ticket")
              {
               临_do_67 = 临_in_64;
              }
            else
              {
               if(临_st_62 == "Lots")
                 {
                  临_do_67 = 临_do_65;
                 }
               else
                 {
                  临_do_67 = 0.0;
                 }
              }
            if(OrderCloseBy(临_do_67,临_in_61,0xFFFFFFFF))
              {
               do
                 {
                  临_st_68 = "Ticket";
                  临_st_69 = "sell";
                  临_in_70 = 0;
                  临_do_71 = 0.0;
                  for(临_in_72 = OrdersTotal() - 1 ; 临_in_72 >= 0 ; 临_in_72 = 临_in_72 - 1)
                    {
                     if(!(OrderSelect(临_in_72,SELECT_BY_POS,MODE_TRADES)) || OrderSymbol() != Symbol() || OrderMagicNumber() != Magic)
                        continue;

                     if(临_st_69 == "buy" && OrderType() == 0 && OrderTicket() > 临_in_70)
                       {
                        OrderOpenTime();
                        OrderOpenPrice();
                        临_do_71 = OrderLots();
                        临_in_70 = OrderTicket();
                       }
                     if(临_st_69 != "sell" || OrderType() != 1 || OrderTicket() <= 临_in_70)
                        continue;
                     OrderOpenTime();
                     OrderOpenPrice();
                     临_do_71 = OrderLots();
                     临_in_70 = OrderTicket();
                    }
                  if(临_st_68 == "Ticket")
                    {
                     临_do_73 = 临_in_70;
                    }
                  else
                    {
                     if(临_st_68 == "Lots")
                       {
                        临_do_73 = 临_do_71;
                       }
                     else
                       {
                        临_do_73 = 0.0;
                       }
                    }
                  临_in_74 = 临_do_73;
                  临_st_75 = "Ticket";
                  临_st_76 = "buy";
                  临_in_77 = 0;
                  临_do_78 = 0.0;
                  for(临_in_79 = OrdersTotal() - 1 ; 临_in_79 >= 0 ; 临_in_79 = 临_in_79 - 1)
                    {
                     if(!(OrderSelect(临_in_79,SELECT_BY_POS,MODE_TRADES)) || OrderSymbol() != Symbol() || OrderMagicNumber() != Magic)
                        continue;

                     if(临_st_76 == "buy" && OrderType() == 0 && OrderTicket() > 临_in_77)
                       {
                        OrderOpenTime();
                        OrderOpenPrice();
                        临_do_78 = OrderLots();
                        临_in_77 = OrderTicket();
                       }
                     if(临_st_76 != "sell" || OrderType() != 1 || OrderTicket() <= 临_in_77)
                        continue;
                     OrderOpenTime();
                     OrderOpenPrice();
                     临_do_78 = OrderLots();
                     临_in_77 = OrderTicket();
                    }
                  if(临_st_75 == "Ticket")
                    {
                     临_do_80 = 临_in_77;
                    }
                  else
                    {
                     if(临_st_75 == "Lots")
                       {
                        临_do_80 = 临_do_78;
                       }
                     else
                       {
                        临_do_80 = 0.0;
                       }
                    }
                 }
               while(OrderCloseBy(临_do_80,临_in_74,0xFFFFFFFF));
              }
            lizong_7(0);
            if(整体平仓后X秒再开仓 > 0)
              {
               总_da_9=TimeCurrent() + 整体平仓后X秒再开仓;
              }
            return(0);
           }
        }
      if(子_do_4 + 子_do_3>=整体平仓金额 && (子_do_4<=单边平仓限制 || 子_do_3<=单边平仓限制))
        {
         临_st_81 = "Ticket";
         临_st_82 = "sell";
         临_in_83 = 0;
         临_do_84 = 0.0;
         for(临_in_85 = OrdersTotal() - 1 ; 临_in_85 >= 0 ; 临_in_85 = 临_in_85 - 1)
           {
            if(!(OrderSelect(临_in_85,SELECT_BY_POS,MODE_TRADES)) || OrderSymbol() != Symbol() || OrderMagicNumber() != Magic)
               continue;

            if(临_st_82 == "buy" && OrderType() == 0 && OrderTicket() > 临_in_83)
              {
               OrderOpenTime();
               OrderOpenPrice();
               临_do_84 = OrderLots();
               临_in_83 = OrderTicket();
              }
            if(临_st_82 != "sell" || OrderType() != 1 || OrderTicket() <= 临_in_83)
               continue;
            OrderOpenTime();
            OrderOpenPrice();
            临_do_84 = OrderLots();
            临_in_83 = OrderTicket();
           }
         if(临_st_81 == "Ticket")
           {
            临_do_86 = 临_in_83;
           }
         else
           {
            if(临_st_81 == "Lots")
              {
               临_do_86 = 临_do_84;
              }
            else
              {
               临_do_86 = 0.0;
              }
           }
         临_in_87 = 临_do_86;
         临_st_88 = "Ticket";
         临_st_89 = "buy";
         临_in_90 = 0;
         临_do_91 = 0.0;
         for(临_in_92 = OrdersTotal() - 1 ; 临_in_92 >= 0 ; 临_in_92 = 临_in_92 - 1)
           {
            if(!(OrderSelect(临_in_92,SELECT_BY_POS,MODE_TRADES)) || OrderSymbol() != Symbol() || OrderMagicNumber() != Magic)
               continue;

            if(临_st_89 == "buy" && OrderType() == 0 && OrderTicket() > 临_in_90)
              {
               OrderOpenTime();
               OrderOpenPrice();
               临_do_91 = OrderLots();
               临_in_90 = OrderTicket();
              }
            if(临_st_89 != "sell" || OrderType() != 1 || OrderTicket() <= 临_in_90)
               continue;
            OrderOpenTime();
            OrderOpenPrice();
            临_do_91 = OrderLots();
            临_in_90 = OrderTicket();
           }
         if(临_st_88 == "Ticket")
           {
            临_do_93 = 临_in_90;
           }
         else
           {
            if(临_st_88 == "Lots")
              {
               临_do_93 = 临_do_91;
              }
            else
              {
               临_do_93 = 0.0;
              }
           }
         if(OrderCloseBy(临_do_93,临_in_87,0xFFFFFFFF))
           {
            do
              {
               临_st_94 = "Ticket";
               临_st_95 = "sell";
               临_in_96 = 0;
               临_do_97 = 0.0;
               for(临_in_98 = OrdersTotal() - 1 ; 临_in_98 >= 0 ; 临_in_98 = 临_in_98 - 1)
                 {
                  if(!(OrderSelect(临_in_98,SELECT_BY_POS,MODE_TRADES)) || OrderSymbol() != Symbol() || OrderMagicNumber() != Magic)
                     continue;

                  if(临_st_95 == "buy" && OrderType() == 0 && OrderTicket() > 临_in_96)
                    {
                     OrderOpenTime();
                     OrderOpenPrice();
                     临_do_97 = OrderLots();
                     临_in_96 = OrderTicket();
                    }
                  if(临_st_95 != "sell" || OrderType() != 1 || OrderTicket() <= 临_in_96)
                     continue;
                  OrderOpenTime();
                  OrderOpenPrice();
                  临_do_97 = OrderLots();
                  临_in_96 = OrderTicket();
                 }
               if(临_st_94 == "Ticket")
                 {
                  临_do_99 = 临_in_96;
                 }
               else
                 {
                  if(临_st_94 == "Lots")
                    {
                     临_do_99 = 临_do_97;
                    }
                  else
                    {
                     临_do_99 = 0.0;
                    }
                 }
               临_in_100 = 临_do_99;
               临_st_101 = "Ticket";
               临_st_102 = "buy";
               临_in_103 = 0;
               临_do_104 = 0.0;
               for(临_in_105 = OrdersTotal() - 1 ; 临_in_105 >= 0 ; 临_in_105 = 临_in_105 - 1)
                 {
                  if(!(OrderSelect(临_in_105,SELECT_BY_POS,MODE_TRADES)) || OrderSymbol() != Symbol() || OrderMagicNumber() != Magic)
                     continue;

                  if(临_st_102 == "buy" && OrderType() == 0 && OrderTicket() > 临_in_103)
                    {
                     OrderOpenTime();
                     OrderOpenPrice();
                     临_do_104 = OrderLots();
                     临_in_103 = OrderTicket();
                    }
                  if(临_st_102 != "sell" || OrderType() != 1 || OrderTicket() <= 临_in_103)
                     continue;
                  OrderOpenTime();
                  OrderOpenPrice();
                  临_do_104 = OrderLots();
                  临_in_103 = OrderTicket();
                 }
               if(临_st_101 == "Ticket")
                 {
                  临_do_106 = 临_in_103;
                 }
               else
                 {
                  if(临_st_101 == "Lots")
                    {
                     临_do_106 = 临_do_104;
                    }
                  else
                    {
                     临_do_106 = 0.0;
                    }
                 }
              }
            while(OrderCloseBy(临_do_106,临_in_100,0xFFFFFFFF));
           }
         lizong_7(0);
         if(整体平仓后X秒再开仓 > 0)
           {
            总_da_9=TimeCurrent() + 整体平仓后X秒再开仓;
           }
         return(0);
        }
     }
   if(止损金额!=0.0 && 子_do_4 + 子_do_3<=止损金额)
     {
      Print("Buy Loss ",子_do_4);
      Print("Sell Loss ",子_do_3);
      lizong_7(0);
      if(整体平仓后X秒再开仓 > 0)
        {
         总_da_9=TimeCurrent() + 整体平仓后X秒再开仓;
        }
      return(0);
     }
   if(子_do_4<=单边浮亏超过X不继续加仓)
     {
      Comment("Buy");
      ObjectSetText("Char.b",CharToString(225) + CharToString(251),总_in_5,"Wingdings",Red);
     }
   else
     {
      ObjectSetText("Char.b",CharToString(233),总_in_5,"Wingdings",Lime);
     }
   if(子_do_3<=单边浮亏超过X不继续加仓)
     {
      Comment("Sell");
      ObjectSetText("Char.s",CharToString(226) + CharToString(251),总_in_5,"Wingdings",Red);
     }
   else
     {
      ObjectSetText("Char.s",CharToString(234),总_in_5,"Wingdings",Lime);
     }
   if(iOpen(Symbol(),1,0)>iOpen(Symbol(),1,1))
     {
      总_in_40 = 总_in_38 ;
     }
   if(iOpen(Symbol(),1,0)<iOpen(Symbol(),1,1))
     {
      总_in_40 = 总_in_39 ;
     }
   if(iClose(Symbol(),1,0)>iClose(Symbol(),1,1))
     {
      总_in_40 = 总_in_42 ;
     }
   if(iClose(Symbol(),1,0)<iClose(Symbol(),1,1))
     {
      总_in_40 = 总_in_43 ;
     }
   子_do_28 = (Ask - Bid) / Point() ;
   子_st_29 = Symbol()+"点差" + ":"+DoubleToString(子_do_28,1);
   ObjectCreate(总_st_32,OBJ_LABEL,0,0,0.0,0,0.0,0,0.0);
   ObjectSet(总_st_32,OBJPROP_CORNER,1.0);
   ObjectSet(总_st_32,OBJPROP_YDISTANCE,340.0);
   ObjectSet(总_st_32,OBJPROP_XDISTANCE,10.0);
   ObjectSetText(总_st_32,子_st_29,13,"Arial",总_ui_31);
   子_do_30 = AccountLeverage() ;
   子_st_31 = "杠杆: " + DoubleToString(子_do_30,0) + " 倍" ;
   ObjectCreate(总_st_44,OBJ_LABEL,0,0,0.0,0,0.0,0,0.0);
   ObjectSet(总_st_44,OBJPROP_CORNER,1.0);
   ObjectSet(总_st_44,OBJPROP_YDISTANCE,320.0);
   ObjectSet(总_st_44,OBJPROP_XDISTANCE,10.0);
   ObjectSetText(总_st_44,子_st_31,13,"Arial",总_ui_31);
   if(逆势保护开关 == 1)
     {
      子_do_32 = lizong_10(0,Magic,1,总_in_28) - lizong_10(0,Magic,2,总_in_29) ;
      if(总_do_23<子_do_32)
        {
         总_do_23 = 子_do_32 ;
        }
      if(总_do_23>0.0 && 子_do_32>0.0 && 总_do_23>0.0)
        {
         临_in_107 = 1;
         临_in_108 = Magic;
         临_in_109 = 0;
         临_do_110 = 0.0;
         临_do_111 = 0.0;
         for(临_in_112 = OrdersTotal() - 1 ; 临_in_112 >= 0 ; 临_in_112 = 临_in_112 - 1)
           {
            if(!(OrderSelect(临_in_112,SELECT_BY_POS,MODE_TRADES)) || OrderSymbol() != Symbol() || (OrderMagicNumber()  !=  临_in_108 && 临_in_108 != -1) || (OrderType()  !=  临_in_109 && 临_in_109 != -100))
               continue;

            if(临_in_107 == 1 && 临_do_111<OrderProfit())
              {
               临_do_111 = OrderProfit();
               临_do_110 = OrderLots();
              }
            if(临_in_107 != 2 || (!(临_do_111>OrderProfit()) && !(临_do_111==0.0)))
               continue;
            临_do_111 = OrderProfit();
            临_do_110 = OrderLots();
           }
         if(子_do_5>临_do_110 * 3.0 + 子_do_6 && 子_in_8 > 3)
           {
            lizong_9(0,Magic,总_in_28,1);
            lizong_9(0,Magic,总_in_29,2);
            总_do_23 = 0.0 ;
            总_do_24 = 0.0 ;
           }
        }
      子_do_32 = lizong_10(1,Magic,1,总_in_28) - lizong_10(1,Magic,2,总_in_29) ;
      if(总_do_24<子_do_32)
        {
         总_do_24 = 子_do_32 ;
        }
      if(总_do_24>0.0 && 子_do_32>0.0 && 总_do_24>0.0)
        {
         临_in_113 = 1;
         临_in_114 = Magic;
         临_in_115 = 1;
         临_do_116 = 0.0;
         临_do_117 = 0.0;
         for(临_in_118 = OrdersTotal() - 1 ; 临_in_118 >= 0 ; 临_in_118 = 临_in_118 - 1)
           {
            if(!(OrderSelect(临_in_118,SELECT_BY_POS,MODE_TRADES)) || OrderSymbol() != Symbol() || (OrderMagicNumber()  !=  临_in_114 && 临_in_114 != -1) || (OrderType()  !=  临_in_115 && 临_in_115 != -100))
               continue;

            if(临_in_113 == 1 && 临_do_117<OrderProfit())
              {
               临_do_117 = OrderProfit();
               临_do_116 = OrderLots();
              }
            if(临_in_113 != 2 || (!(临_do_117>OrderProfit()) && !(临_do_117==0.0)))
               continue;
            临_do_117 = OrderProfit();
            临_do_116 = OrderLots();
           }
         if(子_do_6>临_do_116 * 3.0 + 子_do_5 && 子_in_9 > 3)
           {
            lizong_9(1,Magic,总_in_28,1);
            lizong_9(1,Magic,总_in_29,2);
            总_do_23 = 0.0 ;
            总_do_24 = 0.0 ;
           }
        }
     }
   if(((浮亏X美元启用第二参数!=0.0 && 子_do_39>浮亏X美元启用第二参数) || 浮亏X美元启用第二参数==0.0))
     {
      子_bo_34 = true ;
     }
   if(浮亏X美元启用第二参数!=0.0 && 子_do_39<=浮亏X美元启用第二参数)
     {
      子_bo_34 = false ;
     }

   if(((开单模式 == 1 && 总_da_62 != iTime(NULL,开单时区,0)) || 开单模式 == 2 || 开单模式 == 3))
     {
      if(子_in_10 == 0 && 子_do_4>单边浮亏超过X不继续加仓 && 总_bo_1)
        {
         if(子_in_8 == 0)
           {
            子_do_25 = NormalizeDouble(首单距离 * Point() + Ask,Digits()) ;
           }
         else
           {
            if(子_bo_34)
              {
               子_do_25 = NormalizeDouble(最小距离 * Point() + Ask,Digits()) ;
              }
            if(子_bo_34 == false && 浮亏X美元启用第二参数!=0.0)
              {
               子_do_25 = NormalizeDouble(第二最小距离 * Point() + Ask,Digits()) ;
              }
            if(子_do_25<NormalizeDouble(子_do_16 - 补单间距 * Point(),Digits()) && 子_bo_34)
              {
               子_do_25 = NormalizeDouble(补单间距 * Point() + Ask,Digits()) ;
              }
            if(子_do_25<NormalizeDouble(子_do_16 - 第二补单间距 * Point(),Digits()) && 子_bo_34 == false && 浮亏X美元启用第二参数!=0.0)
              {
               子_do_25 = NormalizeDouble(第二补单间距 * Point() + Ask,Digits()) ;
              }
           }
         if((子_in_8 == 0 || (子_do_15!=0.0 && 子_do_25>=NormalizeDouble(补单间距 * Point() + 子_do_15,Digits()) && 总_bo_11 && 子_bo_34) || (子_do_15!=0.0 && 子_do_25>=NormalizeDouble(第二补单间距 * Point() + 子_do_15,Digits()) && 总_bo_11 && 子_bo_34 == false && 浮亏X美元启用第二参数!=0.0) || (子_do_16!=0.0 && 子_do_25<=NormalizeDouble(子_do_16 - 补单间距 * Point(),Digits()) && 子_bo_34) || (子_do_16!=0.0 && 子_do_25<=NormalizeDouble(子_do_16 - 第二补单间距 * Point(),Digits()) && 子_bo_34 == false && 浮亏X美元启用第二参数!=0.0) || (完全对锁时挂上顺势开关 && 子_do_15!=0.0 && 子_do_25>=NormalizeDouble(补单间距 * Point() + 子_do_15,Digits()) && 子_do_5==子_do_6)))
           {
            if(子_in_8 == 0)
              {
               子_do_26 = 起始手数 ;
              }
            else
              {
               子_do_26 = NormalizeDouble(起始手数 * MathPow(倍率,子_in_8) + 子_in_8 * 累加手数,下单量的小数位) ;
              }
            if(子_do_26>最大开单手数)
              {
               子_do_26 = 最大开单手数 ;
              }
            if(((子_do_26 * 2.0<AccountFreeMargin() / MarketInfo(Symbol(),32) && 子_in_8 > 0) || 总_bo_10))
              {
               临_da_119 = 0;
               if(IsTesting())
                 {
                  临_da_119 = TimeCurrent();
                 }
               else
                 {
                  临_da_119 = TimeLocal();
                 }
               总_da_63 = StringToTime(StringConcatenate(TimeYear(临_da_119),".",TimeMonth(临_da_119),".",TimeDay(临_da_119)," ",EA开始时间)) ;
               总_da_64 = StringToTime(StringConcatenate(TimeYear(临_da_119),".",TimeMonth(临_da_119),".",TimeDay(临_da_119)," ",EA结束时间)) ;
               if(总_da_63 <  总_da_64 && (临_da_119 < 总_da_63 || 临_da_119 > 总_da_64))
                 {
                  临_bo_120 = false;
                 }
               else
                 {
                  if(总_da_63 > 总_da_64 && 临_da_119 <  总_da_63 && 临_da_119 > 总_da_64)
                    {
                     临_bo_120 = false;
                    }
                  else
                    {
                     临_bo_120 = true;
                    }
                 }

               临_da_121 = 0;
               if(临_bo_120)
                 {
                  if(IsTesting())
                    {
                     临_da_121 = TimeCurrent();
                    }
                  else
                    {
                     临_da_121 = TimeLocal();
                    }
                  总_da_65 = StringToTime(StringConcatenate(TimeYear(临_da_121),".",TimeMonth(临_da_121),".",TimeDay(临_da_121)," ",限价开始时间)) ;
                  总_da_66 = StringToTime(StringConcatenate(TimeYear(临_da_121),".",TimeMonth(临_da_121),".",TimeDay(临_da_121)," ",限价结束时间)) ;
                  if(总_da_65 <  总_da_66 && (临_da_121 < 总_da_63 || 临_da_121 > 总_da_66))
                    {
                     ObjectDelete("HLINE_LONG");
                     ObjectDelete("HLINE_SHORT");
                     ObjectDelete("HLINE_LONGII");
                     ObjectDelete("HLINE_SHORTII");
                     临_bo_122 = false;
                    }
                  else
                    {
                     if(总_da_65 > 总_da_66 && 临_da_121 <  总_da_65 && 临_da_121 > 总_da_66)
                       {
                        ObjectDelete("HLINE_LONG");
                        ObjectDelete("HLINE_SHORT");
                        ObjectDelete("HLINE_LONGII");
                        ObjectDelete("HLINE_SHORTII");
                        临_bo_122 = false;
                       }
                     else
                       {
                        临_bo_122 = true;
                       }
                    }

                  临_da_123 = 0;
                  if(IsTesting())
                    {
                     临_da_123 = TimeCurrent();
                    }
                  else
                    {
                     临_da_123 = TimeLocal();
                    }
                  总_da_65 = StringToTime(StringConcatenate(TimeYear(临_da_123),".",TimeMonth(临_da_123),".",TimeDay(临_da_123)," ",限价开始时间)) ;
                  总_da_66 = StringToTime(StringConcatenate(TimeYear(临_da_123),".",TimeMonth(临_da_123),".",TimeDay(临_da_123)," ",限价结束时间)) ;

                  if(总_da_65 <  总_da_66 && (临_da_123 < 总_da_63 || 临_da_123 > 总_da_66))
                    {
                     ObjectDelete("HLINE_LONG");
                     ObjectDelete("HLINE_SHORT");
                     ObjectDelete("HLINE_LONGII");
                     ObjectDelete("HLINE_SHORTII");
                     临_bo_124 = false;
                    }
                  else
                    {
                     if(总_da_65 > 总_da_66 && 临_da_123 <  总_da_65 && 临_da_123 > 总_da_66)
                       {
                        ObjectDelete("HLINE_LONG");
                        ObjectDelete("HLINE_SHORT");
                        ObjectDelete("HLINE_LONGII");
                        ObjectDelete("HLINE_SHORTII");
                        临_bo_124 = false;
                       }
                     else
                       {
                        临_bo_124 = true;
                       }
                    }
                  if(!(临_bo_124))
                    {
                     临_da_125 = 0;
                     if(IsTesting())
                       {
                        临_da_125 = TimeCurrent();
                       }
                     else
                       {
                        临_da_125 = TimeLocal();
                       }
                     总_da_65 = StringToTime(StringConcatenate(TimeYear(临_da_125),".",TimeMonth(临_da_125),".",TimeDay(临_da_125)," ",限价开始时间)) ;
                     总_da_66 = StringToTime(StringConcatenate(TimeYear(临_da_125),".",TimeMonth(临_da_125),".",TimeDay(临_da_125)," ",限价结束时间)) ;
                     if(总_da_65 <  总_da_66 && (临_da_125 < 总_da_63 || 临_da_125 > 总_da_66))
                       {
                        ObjectDelete("HLINE_LONG");
                        ObjectDelete("HLINE_SHORT");
                        ObjectDelete("HLINE_LONGII");
                        ObjectDelete("HLINE_SHORTII");
                        临_bo_126 = false;
                       }
                     else
                       {
                        if(总_da_65 > 总_da_66 && 临_da_125 <  总_da_65 && 临_da_125 > 总_da_66)
                          {
                           ObjectDelete("HLINE_LONG");
                           ObjectDelete("HLINE_SHORT");
                           ObjectDelete("HLINE_LONGII");
                           ObjectDelete("HLINE_SHORTII");
                           临_bo_126 = false;
                          }
                        else
                          {
                           临_bo_126 = true;
                          }
                       }
                     // if ( (   (临_bo_126 && 子_in_8 >= 1) ) )
                     //  {


                     临_da_127 = 0;
                     if(IsTesting())
                       {
                        临_da_127 = TimeCurrent();
                       }
                     else
                       {
                        临_da_127 = TimeLocal();
                       }
                     总_da_65 = StringToTime(StringConcatenate(TimeYear(临_da_127),".",TimeMonth(临_da_127),".",TimeDay(临_da_127)," ",限价开始时间)) ;
                     总_da_66 = StringToTime(StringConcatenate(TimeYear(临_da_127),".",TimeMonth(临_da_127),".",TimeDay(临_da_127)," ",限价结束时间)) ;
                     if(总_da_65 <  总_da_66 && (临_da_127 < 总_da_63 || 临_da_127 > 总_da_66))
                       {
                        ObjectDelete("HLINE_LONG");
                        ObjectDelete("HLINE_SHORT");
                        ObjectDelete("HLINE_LONGII");
                        ObjectDelete("HLINE_SHORTII");
                        临_bo_128 = false;
                       }
                     else
                       {
                        if(总_da_65 > 总_da_66 && 临_da_127 <  总_da_65 && 临_da_127 > 总_da_66)
                          {
                           ObjectDelete("HLINE_LONG");
                           ObjectDelete("HLINE_SHORT");
                           ObjectDelete("HLINE_LONGII");
                           ObjectDelete("HLINE_SHORTII");
                           临_bo_128 = false;
                          }
                        else
                          {
                           临_bo_128 = true;
                          }
                       }

                     临_da_129 = 0;
                     if(IsTesting())
                       {
                        临_da_129 = TimeCurrent();
                       }
                     else
                       {
                        临_da_129 = TimeLocal();
                       }
                     总_da_65 = StringToTime(StringConcatenate(TimeYear(临_da_129),".",TimeMonth(临_da_129),".",TimeDay(临_da_129)," ",限价开始时间)) ;
                     总_da_66 = StringToTime(StringConcatenate(TimeYear(临_da_129),".",TimeMonth(临_da_129),".",TimeDay(临_da_129)," ",限价结束时间)) ;
                     if(总_da_65 <  总_da_66 && (临_da_129 < 总_da_63 || 临_da_129 > 总_da_66))
                       {
                        ObjectDelete("HLINE_LONG");
                        ObjectDelete("HLINE_SHORT");
                        ObjectDelete("HLINE_LONGII");
                        ObjectDelete("HLINE_SHORTII");
                        临_bo_130 = false;
                       }
                     else
                       {
                        if(总_da_65 > 总_da_66 && 临_da_129 <  总_da_65 && 临_da_129 > 总_da_66)
                          {
                           ObjectDelete("HLINE_LONG");
                           ObjectDelete("HLINE_SHORT");
                           ObjectDelete("HLINE_LONGII");
                           ObjectDelete("HLINE_SHORTII");
                           临_bo_130 = false;
                          }
                        else
                          {
                           临_bo_130 = true;
                          }
                       }
                    }
                  // Print("总_da_65=",总_da_65,"  总_da_66=",总_da_66,"  临_da_123=",临_da_123,"  总_da_63=",总_da_63,"  临_da_123=",临_da_123);
                  if((On_top_of_this_price_not_Buy_order==0.0 || (临_bo_128 && 子_in_8 >= 1 && 子_do_25<On_top_of_this_price_not_Buy_order) || 子_in_8 == 0 || !(临_bo_130)))
                    {
                     临_in_131 = 0;
                     临_in_132 = Magic;
                     临_in_133 = 0;
                     临_in_134 = 0;
                     for(临_in_135 = OrdersTotal() - 1 ; 临_in_135 >= 0 ; 临_in_135=临_in_135 - 1)
                       {
                        if(!(OrderSelect(临_in_135,SELECT_BY_POS,MODE_TRADES)) || Symbol() != OrderSymbol() || OrderMagicNumber() != 临_in_132 || OrderTicket() <= 临_in_134 || OrderType() != 临_in_131)
                           continue;
                        临_in_134 = OrderTicket();
                        临_in_133 = OrderOpenTime();
                       }
                     if(((TimeCurrent() - 临_in_133 >= 开单时间间距X秒 && 开单模式 == 2) || 开单模式 == 3 || 开单模式 == 1))
                       {
                        if(((子_do_15!=0.0 && 子_do_25>=NormalizeDouble(补单间距 * Point() + 子_do_15,Digits()) && 总_bo_11 && 子_bo_34) || (子_do_15!=0.0 && 子_do_25>=NormalizeDouble(第二补单间距 * Point() + 子_do_15,Digits()) && 总_bo_11 && 子_bo_34 == false && 浮亏X美元启用第二参数!=0.0) || (完全对锁时挂上顺势开关 && 子_do_15!=0.0 && 子_do_25>=NormalizeDouble(补单间距 * Point() + 子_do_15,Digits()) && 子_do_5==子_do_6)))
                          {
                           if(允许开多)
                              总_in_69 = OrderSend(Symbol(),OP_BUYSTOP,子_do_26,子_do_25,总_in_22,0.0,0.0,Comments+"SS",Magic,0,Blue) ;
                           if(总_in_69 > 0)
                             {
                              Print(Symbol() + "开单成功，订单编号:" + DoubleToString(总_in_69,0));
                             }
                           else
                             {
                              Print(Symbol() + "开单失败");
                             }
                          }
                        else
                          {
                           if(允许开多)
                              总_in_69 = OrderSend(Symbol(),OP_BUYSTOP,子_do_26,子_do_25,总_in_22,0.0,0.0,Comments+"NN",Magic,0,Blue) ;
                           if(总_in_69 > 0)
                             {
                              Print(Symbol() + "开单成功，订单编号:" + DoubleToString(总_in_69,0));
                             }
                           else
                             {
                              Print(Symbol() + "开单失败");
                             }
                          }
                       }
                    }
                 }
              }
            else
              {
               Comment("起始手数 ",DoubleToString(子_do_26,2));
              }
           }
        }

      if(子_in_11 == 0 && 子_do_3>单边浮亏超过X不继续加仓 && 总_bo_2)
        {
         if(子_in_9 == 0)
           {
            子_do_25 = NormalizeDouble(Bid - 首单距离 * Point(),Digits()) ;
           }
         else
           {
            if(子_bo_34)
              {
               子_do_25 = NormalizeDouble(Bid - 最小距离 * Point(),Digits()) ;
              }
            if(子_bo_34 == false)
              {
               子_do_25 = NormalizeDouble(Bid - 第二最小距离 * Point(),Digits()) ;
              }
            if(子_do_25<NormalizeDouble(补单间距 * Point() + 子_do_17,Digits()) && 子_bo_34)
              {
               子_do_25 = NormalizeDouble(Bid - 补单间距 * Point(),Digits()) ;
              }
            if(子_do_25<NormalizeDouble(第二补单间距 * Point() + 子_do_17,Digits()) && 子_bo_34 == false && 浮亏X美元启用第二参数!=0.0)
              {
               子_do_25 = NormalizeDouble(Bid - 第二补单间距 * Point(),Digits()) ;
              }
           }
         if((子_in_9 == 0 || (子_do_18!=0.0 && 子_do_25<=NormalizeDouble(子_do_18 - 补单间距 * Point(),Digits()) && 总_bo_12 && 子_bo_34) || (子_do_18!=0.0 && 子_do_25<=NormalizeDouble(子_do_18 - 第二补单间距 * Point(),Digits()) && 总_bo_12 && 子_bo_34 == false && 浮亏X美元启用第二参数!=0.0) || (子_do_17!=0.0 && 子_do_25>=NormalizeDouble(补单间距 * Point() + 子_do_17,Digits()) && 子_bo_34) || (子_do_17!=0.0 && 子_do_25>=NormalizeDouble(第二补单间距 * Point() + 子_do_17,Digits()) && 子_bo_34 == false && 浮亏X美元启用第二参数!=0.0) || (完全对锁时挂上顺势开关 && 子_do_18!=0.0 && 子_do_25<=NormalizeDouble(子_do_18 - 补单间距 * Point(),Digits()) && 子_do_5==子_do_6)))
           {
            if(子_in_9 == 0)
              {
               子_do_26 = 起始手数 ;
              }
            else
              {
               子_do_26 = NormalizeDouble(起始手数 * MathPow(倍率,子_in_9) + 子_in_9 * 累加手数,下单量的小数位) ;
              }
            if(子_do_26>最大开单手数)
              {
               子_do_26 = 最大开单手数 ;
              }
            if(((子_do_26 * 2.0<AccountFreeMargin() / MarketInfo(Symbol(),32) && 子_in_9 > 0) || 总_bo_10))
              {
               临_da_136 = 0;
               if(IsTesting())
                 {
                  临_da_136 = TimeCurrent();
                 }
               else
                 {
                  临_da_136 = TimeLocal();
                 }
               总_da_63 = StringToTime(StringConcatenate(TimeYear(临_da_136),".",TimeMonth(临_da_136),".",TimeDay(临_da_136)," ",EA开始时间)) ;
               总_da_64 = StringToTime(StringConcatenate(TimeYear(临_da_136),".",TimeMonth(临_da_136),".",TimeDay(临_da_136)," ",EA结束时间)) ;
               if(总_da_63 <  总_da_64 && (临_da_136 < 总_da_63 || 临_da_136 > 总_da_64))
                 {
                  临_bo_137 = false;
                 }
               else
                 {
                  if(总_da_63 > 总_da_64 && 临_da_136 <  总_da_63 && 临_da_136 > 总_da_64)
                    {
                     临_bo_137 = false;
                    }
                  else
                    {
                     临_bo_137 = true;
                    }
                 }

               临_da_138 = 0;
               if(临_bo_137)
                 {
                  if(IsTesting())
                    {
                     临_da_138 = TimeCurrent();
                    }
                  else
                    {
                     临_da_138 = TimeLocal();
                    }
                  总_da_65 = StringToTime(StringConcatenate(TimeYear(临_da_138),".",TimeMonth(临_da_138),".",TimeDay(临_da_138)," ",限价开始时间)) ;
                  总_da_66 = StringToTime(StringConcatenate(TimeYear(临_da_138),".",TimeMonth(临_da_138),".",TimeDay(临_da_138)," ",限价结束时间)) ;
                  if(总_da_65 <  总_da_66 && (临_da_138 < 总_da_63 || 临_da_138 > 总_da_66))
                    {
                     ObjectDelete("HLINE_LONG");
                     ObjectDelete("HLINE_SHORT");
                     ObjectDelete("HLINE_LONGII");
                     ObjectDelete("HLINE_SHORTII");
                     临_bo_139 = false;
                    }
                  else
                    {
                     if(总_da_65 > 总_da_66 && 临_da_138 <  总_da_65 && 临_da_138 > 总_da_66)
                       {
                        ObjectDelete("HLINE_LONG");
                        ObjectDelete("HLINE_SHORT");
                        ObjectDelete("HLINE_LONGII");
                        ObjectDelete("HLINE_SHORTII");
                        临_bo_139 = false;
                       }
                     else
                       {
                        临_bo_139 = true;
                       }
                    }

                  临_da_140 = 0;
                  if(IsTesting())
                    {
                     临_da_140 = TimeCurrent();
                    }
                  else
                    {
                     临_da_140 = TimeLocal();
                    }
                  总_da_65 = StringToTime(StringConcatenate(TimeYear(临_da_140),".",TimeMonth(临_da_140),".",TimeDay(临_da_140)," ",限价开始时间)) ;
                  总_da_66 = StringToTime(StringConcatenate(TimeYear(临_da_140),".",TimeMonth(临_da_140),".",TimeDay(临_da_140)," ",限价结束时间)) ;
                  if(总_da_65 <  总_da_66 && (临_da_140 < 总_da_63 || 临_da_140 > 总_da_66))
                    {
                     ObjectDelete("HLINE_LONG");
                     ObjectDelete("HLINE_SHORT");
                     ObjectDelete("HLINE_LONGII");
                     ObjectDelete("HLINE_SHORTII");
                     临_bo_141 = false;
                    }
                  else
                    {
                     if(总_da_65 > 总_da_66 && 临_da_140 <  总_da_65 && 临_da_140 > 总_da_66)
                       {
                        ObjectDelete("HLINE_LONG");
                        ObjectDelete("HLINE_SHORT");
                        ObjectDelete("HLINE_LONGII");
                        ObjectDelete("HLINE_SHORTII");
                        临_bo_141 = false;
                       }
                     else
                       {
                        临_bo_141 = true;
                       }
                    }
                  if(!(临_bo_141))
                    {
                     临_da_142 = 0;
                     if(IsTesting())
                       {
                        临_da_142 = TimeCurrent();
                       }
                     else
                       {
                        临_da_142 = TimeLocal();
                       }
                     总_da_65 = StringToTime(StringConcatenate(TimeYear(临_da_142),".",TimeMonth(临_da_142),".",TimeDay(临_da_142)," ",限价开始时间)) ;
                     总_da_66 = StringToTime(StringConcatenate(TimeYear(临_da_142),".",TimeMonth(临_da_142),".",TimeDay(临_da_142)," ",限价结束时间)) ;
                     if(总_da_65 <  总_da_66 && (临_da_142 < 总_da_63 || 临_da_142 > 总_da_66))
                       {
                        ObjectDelete("HLINE_LONG");
                        ObjectDelete("HLINE_SHORT");
                        ObjectDelete("HLINE_LONGII");
                        ObjectDelete("HLINE_SHORTII");
                        临_bo_143 = false;
                       }
                     else
                       {
                        if(总_da_65 > 总_da_66 && 临_da_142 <  总_da_65 && 临_da_142 > 总_da_66)
                          {
                           ObjectDelete("HLINE_LONG");
                           ObjectDelete("HLINE_SHORT");
                           ObjectDelete("HLINE_LONGII");
                           ObjectDelete("HLINE_SHORTII");
                           临_bo_143 = false;
                          }
                        else
                          {
                           临_bo_143 = true;
                          }
                       }
                     //if ( (   (临_bo_143 && 子_in_9 >= 1) ) )
                     //  {


                     临_da_144 = 0;
                     if(IsTesting())
                       {
                        临_da_144 = TimeCurrent();
                       }
                     else
                       {
                        临_da_144 = TimeLocal();
                       }
                     总_da_65 = StringToTime(StringConcatenate(TimeYear(临_da_144),".",TimeMonth(临_da_144),".",TimeDay(临_da_144)," ",限价开始时间)) ;
                     总_da_66 = StringToTime(StringConcatenate(TimeYear(临_da_144),".",TimeMonth(临_da_144),".",TimeDay(临_da_144)," ",限价结束时间)) ;
                     if(总_da_65 <  总_da_66 && (临_da_144 < 总_da_63 || 临_da_144 > 总_da_66))
                       {
                        ObjectDelete("HLINE_LONG");
                        ObjectDelete("HLINE_SHORT");
                        ObjectDelete("HLINE_LONGII");
                        ObjectDelete("HLINE_SHORTII");
                        临_bo_145 = false;
                       }
                     else
                       {
                        if(总_da_65 > 总_da_66 && 临_da_144 <  总_da_65 && 临_da_144 > 总_da_66)
                          {
                           ObjectDelete("HLINE_LONG");
                           ObjectDelete("HLINE_SHORT");
                           ObjectDelete("HLINE_LONGII");
                           ObjectDelete("HLINE_SHORTII");
                           临_bo_145 = false;
                          }
                        else
                          {
                           临_bo_145 = true;
                          }
                       }

                     临_da_146 = 0;
                     if(IsTesting())
                       {
                        临_da_146 = TimeCurrent();
                       }
                     else
                       {
                        临_da_146 = TimeLocal();
                       }
                     总_da_65 = StringToTime(StringConcatenate(TimeYear(临_da_146),".",TimeMonth(临_da_146),".",TimeDay(临_da_146)," ",限价开始时间)) ;
                     总_da_66 = StringToTime(StringConcatenate(TimeYear(临_da_146),".",TimeMonth(临_da_146),".",TimeDay(临_da_146)," ",限价结束时间)) ;
                     if(总_da_65 <  总_da_66 && (临_da_146 < 总_da_63 || 临_da_146 > 总_da_66))
                       {
                        ObjectDelete("HLINE_LONG");
                        ObjectDelete("HLINE_SHORT");
                        ObjectDelete("HLINE_LONGII");
                        ObjectDelete("HLINE_SHORTII");
                        临_bo_147 = false;
                       }
                     else
                       {
                        if(总_da_65 > 总_da_66 && 临_da_146 <  总_da_65 && 临_da_146 > 总_da_66)
                          {
                           ObjectDelete("HLINE_LONG");
                           ObjectDelete("HLINE_SHORT");
                           ObjectDelete("HLINE_LONGII");
                           ObjectDelete("HLINE_SHORTII");
                           临_bo_147 = false;
                          }
                        else
                          {
                           临_bo_147 = true;
                          }
                       }
                    }
                  // Print("总_da_65=",总_da_65,"  总_da_66=",总_da_66,"  临_da_123=",临_da_123,"  总_da_63=",总_da_63,"  临_da_123=",临_da_123);
                  if((On_under_of_this_price_not_Sell_order==0.0 || (临_bo_145 && 子_in_9 >= 1 && 子_do_25>On_under_of_this_price_not_Sell_order) || 子_in_9 == 0 || !(临_bo_147)))
                    {
                     临_in_148 = 1;
                     临_in_149 = Magic;
                     临_in_150 = 0;
                     临_in_151 = 0;
                     for(临_in_152 = OrdersTotal() - 1 ; 临_in_152 >= 0 ; 临_in_152=临_in_152 - 1)
                       {
                        if(!(OrderSelect(临_in_152,SELECT_BY_POS,MODE_TRADES)) || Symbol() != OrderSymbol() || OrderMagicNumber() != 临_in_149 || OrderTicket() <= 临_in_151 || OrderType() != 临_in_148)
                           continue;
                        临_in_151 = OrderTicket();
                        临_in_150 = OrderOpenTime();
                       }
                     if(((TimeCurrent() - 临_in_150 >= 开单时间间距X秒 && 开单模式 == 2) || 开单模式 == 3 || 开单模式 == 1))
                       {
                        if(((子_do_18!=0.0 && 子_do_25<=NormalizeDouble(子_do_18 - 补单间距 * Point(),Digits()) && 总_bo_12 && 子_bo_34) || (子_do_18!=0.0 && 子_do_25<=NormalizeDouble(子_do_18 - 第二补单间距 * Point(),Digits()) && 总_bo_12 && 子_bo_34 == false && 浮亏X美元启用第二参数!=0.0) || (完全对锁时挂上顺势开关 && 子_do_18!=0.0 && 子_do_25<=NormalizeDouble(子_do_18 - 补单间距 * Point(),Digits()) && 子_do_5==子_do_6)))
                          {
                           if(允许开空)
                              总_in_69 = OrderSend(Symbol(),OP_SELLSTOP,子_do_26,子_do_25,总_in_22,0.0,0.0,Comments+"SS",Magic,0,Red) ;
                           if(总_in_69 > 0)
                             {
                              Print(Symbol() + "开单成功，订单编号:" + DoubleToString(总_in_69,0));
                             }
                           else
                             {
                              Print(Symbol() + "开单失败");
                             }
                          }
                        else
                          {
                           if(允许开空)
                              总_in_69 = OrderSend(Symbol(),OP_SELLSTOP,子_do_26,子_do_25,总_in_22,0.0,0.0,Comments+"NN",Magic,0,Red) ;
                           if(总_in_69 > 0)
                             {
                              Print(Symbol() + "开单成功，订单编号:" + DoubleToString(总_in_69,0));
                             }
                           else
                             {
                              Print(Symbol() + "开单失败");
                             }
                          }
                       }
                    }
                 }
              }
            else
              {
               Comment("起始手数 ",DoubleToString(子_do_26,2));
              }
           }
        }
      总_da_62 = iTime(NULL,开单时区,0) ;
     }
   ObjectSetText("Balance",StringConcatenate("余额 ",DoubleToString(AccountBalance(),2)),总_in_5,"Arial",总_ui_6);
   ObjectSetText("Equity",StringConcatenate("净值 ",DoubleToString(AccountEquity(),2)),总_in_5,"Arial",总_ui_6);
   ObjectSetText("FreeMargin",StringConcatenate("可用保证金 ",DoubleToString(AccountFreeMargin(),2)),总_in_5,"Arial",总_ui_6);
   子_do_33 = 子_do_4 + 子_do_3 ;
   if(子_do_5>0.0)
     {
      if(子_do_4>0.0)
        {
         临_in_153 = 255;
        }
      else
        {
         临_in_153 = 65280;
        }
      ObjectSetText("ProfitB",StringConcatenate("Buy ",子_in_8,"单 , ",DoubleToString(子_do_5,2),"手,  盈亏= ",DoubleToString(子_do_4,2)),总_in_5,"Arial",临_in_153);
     }
   else
     {
      ObjectSetText("ProfitB","",总_in_5,"Arial",Gray);
     }
   if(子_do_6>0.0)
     {
      if(子_do_3>0.0)
        {
         临_in_154 = 255;
        }
      else
        {
         临_in_154 = 65280;
        }
      ObjectSetText("ProfitS",StringConcatenate("Sell ",子_in_9,"单 , ",DoubleToString(子_do_6,2),"手,  盈亏= ",DoubleToString(子_do_3,2)),总_in_5,"Arial",临_in_154);
     }
   else
     {
      ObjectSetText("ProfitS","",总_in_5,"Arial",Gray);
     }
   if(子_do_6 + 子_do_5>0.0)
     {
      if(子_do_33>0.0)
        {
         临_in_155 = 255;
        }
      else
        {
         临_in_155 = 65280;
        }
      ObjectSetText("单边平仓金额累加开关",StringConcatenate("总盈亏= ",DoubleToString(子_do_33,2)),总_in_5,"Arial",临_in_155);
     }
   else
     {
      ObjectSetText("单边平仓金额累加开关","",总_in_5,"Arial",White);
     }
   if(子_do_19!=0.0 && 总_bo_1)
     {
      if(子_in_8 == 0)
        {
         子_do_25 = NormalizeDouble(首单距离 * Point() + Ask,Digits()) ;
        }
      if(子_bo_34 && 子_in_8 > 0)
        {
         子_do_25 = NormalizeDouble(最小距离 * Point() + Ask,Digits()) ;
        }
      if(子_bo_34 == false && 子_in_8 > 0 && 浮亏X美元启用第二参数!=0.0)
        {
         子_do_25 = NormalizeDouble(第二最小距离 * Point() + Ask,Digits()) ;
        }
      if(NormalizeDouble(子_do_19 - 挂单追踪点数 * Point(),Digits())>子_do_25 && (((子_do_25<=NormalizeDouble(子_do_16 - 补单间距 * Point(),Digits()) || 子_do_16==0.0 || (总_bo_11 && 子_in_8 == 0) || 子_do_25>=NormalizeDouble(补单间距 * Point() + 子_do_15,Digits()) || 子_do_25<=NormalizeDouble(子_do_16 - 补单间距 * Point(),Digits())) && 子_bo_34) || ((子_do_25<=NormalizeDouble(子_do_16 - 第二补单间距 * Point(),Digits()) || 子_do_16==0.0 || (总_bo_11 && 子_in_8 == 0) || 子_do_25>=NormalizeDouble(第二补单间距 * Point() + 子_do_15,Digits()) || 子_do_25<=NormalizeDouble(子_do_16 - 第二补单间距 * Point(),Digits())) && 子_bo_34 == false && 浮亏X美元启用第二参数!=0.0)))
        {
         if(!(OrderModify(子_in_13,子_do_25,0.0,0.0,0,White)))
           {
            Print("Error ",GetLastError(),"   Order Modify Buy   OOP ",子_do_19,"->",子_do_25);
           }
         else
           {
            Print("Order Buy Modify   OOP ",子_do_2,"->",子_do_25);
           }
        }
     }
   if(子_do_20!=0.0 && 总_bo_2)
     {
      if(子_in_9 == 0)
        {
         子_do_25 = NormalizeDouble(Bid - 首单距离 * Point(),Digits()) ;
        }
      if(子_bo_34 && 子_in_9 > 0)
        {
         子_do_25 = NormalizeDouble(Bid - 最小距离 * Point(),Digits()) ;
        }
      if(子_bo_34 == false && 子_in_9 > 0 && 浮亏X美元启用第二参数!=0.0)
        {
         子_do_25 = NormalizeDouble(Bid - 第二最小距离 * Point(),Digits()) ;
        }
      if(NormalizeDouble(挂单追踪点数 * Point() + 子_do_20,Digits())<子_do_25 && (((子_do_25>=NormalizeDouble(补单间距 * Point() + 子_do_17,Digits()) || 子_do_17==0.0 || (总_bo_12 && 子_in_9 == 0) || 子_do_25<=NormalizeDouble(子_do_18 - 补单间距 * Point(),Digits()) || 子_do_25>=NormalizeDouble(补单间距 * Point() + 子_do_17,Digits())) && 子_bo_34) || ((子_do_25>=NormalizeDouble(第二补单间距 * Point() + 子_do_17,Digits()) || 子_do_17==0.0 || (总_bo_12 && 子_in_9 == 0) || 子_do_25<=NormalizeDouble(子_do_18 - 第二补单间距 * Point(),Digits()) || 子_do_25>=NormalizeDouble(第二补单间距 * Point() + 子_do_17,Digits())) && 子_bo_34 == false && 浮亏X美元启用第二参数!=0.0)))
        {
         if(!(OrderModify(子_in_14,子_do_25,0.0,0.0,0,White)))
           {
            Print("Error ",GetLastError(),"   Order Modify Sell   OOP ",子_do_20,"->",子_do_25);
           }
         else
           {
            Print("Order Sell Modify   OOP ",子_do_2,"->",子_do_25);
           }
        }
     }
   return(0);
  }
//start
//---------------------  ----------------------------------------

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void OnChartEvent(const int 木_0,const long &木_1,const double &木_2,const string &木_3)
  {
   int         子_in_1;
   int         子_in_2;
   int         子_in_3;
   int         子_in_4;
   int         子_in_5;
   int         子_in_6;
   int         子_in_7;
   int         子_in_8;
   int         子_in_9;

//----------------------------
   string     临_st_1;
   int        临_in_2;
   int        临_in_3;
   string     临_st_4;
   int        临_in_5;
   int        临_in_6;
   string     临_st_7;
   int        临_in_8;
   int        临_in_9;
   int        临_in_10;
   string     临_st_11;
   int        临_in_12;
   int        临_in_13;
   string     临_st_14;
   string     临_st_15;
   int        临_in_16;
   double     临_do_17;
   int        临_in_18;
   double     临_do_19;
   int        临_in_20;
   string     临_st_21;
   string     临_st_22;
   int        临_in_23;
   double     临_do_24;
   int        临_in_25;
   double     临_do_26;
   string     临_st_27;
   string     临_st_28;
   int        临_in_29;
   double     临_do_30;
   int        临_in_31;
   double     临_do_32;
   int        临_in_33;
   string     临_st_34;
   string     临_st_35;
   int        临_in_36;
   double     临_do_37;
   int        临_in_38;
   double     临_do_39;

   if(木_0 == 1)
     {
      临_st_1 = "buy";
      临_in_2 = 0;
      for(临_in_3 = OrdersTotal() - 1 ; 临_in_3 >= 0 ; 临_in_3 = 临_in_3 - 1)
        {
         总_in_69 = OrderSelect(临_in_3,SELECT_BY_POS,MODE_TRADES) ;
         if(OrderSymbol() != Symbol() || OrderMagicNumber() != Magic || OrderSymbol() != Symbol() || OrderMagicNumber() != Magic)
            continue;

         if(临_st_1 == "buy" && OrderType() == 0)
           {
            临_in_2 = 临_in_2 + 1;
           }
         if(临_st_1 == "sell" && OrderType() == 1)
           {
            临_in_2 = 临_in_2 + 1;
           }
         if(临_st_1 == "buystop" && OrderType() == 4)
           {
            临_in_2 = 临_in_2 + 1;
           }
         if(临_st_1 != "sellstop" || OrderType() != 5)
            continue;
         临_in_2 = 临_in_2 + 1;
        }
      if(临_in_2 > 0)
        {
         子_in_1 = 0 ;
         if(木_3 == "Button1" && 总_bo_34 == 1)
           {
            子_in_2 = MessageBox("点击确定(Y)表示将全部平多单!是否继续?","友情提醒：",52) ;
            if(子_in_2 == 6)
              {
               for(子_in_3 = OrdersTotal() - 1 ; 子_in_3 >= 0 ; 子_in_3 = 子_in_3 - 1)
                 {
                  总_in_69 = OrderSelect(子_in_3,SELECT_BY_POS,MODE_TRADES) ;
                  if(OrderSymbol() != Symbol() || OrderMagicNumber() != Magic)
                     continue;

                  if(OrderType() == 0)
                    {
                     子_in_1 = OrderClose(OrderTicket(),OrderLots(),MarketInfo(OrderSymbol(),9),5,Red) ;
                    }
                  if(OrderType() == 4)
                    {
                     总_in_69 = OrderDelete(OrderTicket(),0xFFFFFFFF) ;
                    }
                  if(子_in_1 <= 0)
                     continue;
                  PlaySound("ok.wav");
                 }
              }
           }
        }
     }
   if(木_0 == 1)
     {
      临_st_4 = "sell";
      临_in_5 = 0;
      for(临_in_6 = OrdersTotal() - 1 ; 临_in_6 >= 0 ; 临_in_6 = 临_in_6 - 1)
        {
         总_in_69 = OrderSelect(临_in_6,SELECT_BY_POS,MODE_TRADES) ;
         if(OrderSymbol() != Symbol() || OrderMagicNumber() != Magic || OrderSymbol() != Symbol() || OrderMagicNumber() != Magic)
            continue;

         if(临_st_4 == "buy" && OrderType() == 0)
           {
            临_in_5 = 临_in_5 + 1;
           }
         if(临_st_4 == "sell" && OrderType() == 1)
           {
            临_in_5 = 临_in_5 + 1;
           }
         if(临_st_4 == "buystop" && OrderType() == 4)
           {
            临_in_5 = 临_in_5 + 1;
           }
         if(临_st_4 != "sellstop" || OrderType() != 5)
            continue;
         临_in_5 = 临_in_5 + 1;
        }
      if(临_in_5 > 0)
        {
         子_in_4 = 0 ;
         if(木_3 == "Button2" && 总_bo_34 == 1)
           {
            子_in_5 = MessageBox("点击确定(Y)表示将全部平空单!是否继续?","友情提醒：",52) ;
            if(子_in_5 == 6)
              {
               for(子_in_6 = OrdersTotal() - 1 ; 子_in_6 >= 0 ; 子_in_6 = 子_in_6 - 1)
                 {
                  总_in_69 = OrderSelect(子_in_6,SELECT_BY_POS,MODE_TRADES) ;
                  if(OrderSymbol() != Symbol() || OrderMagicNumber() != Magic)
                     continue;

                  if(OrderType() == 1)
                    {
                     子_in_4 = OrderClose(OrderTicket(),OrderLots(),MarketInfo(OrderSymbol(),10),5,Red) ;
                    }
                  if(OrderType() == 5)
                    {
                     总_in_69 = OrderDelete(OrderTicket(),0xFFFFFFFF) ;
                    }
                  if(子_in_4 <= 0)
                     continue;
                  PlaySound("ok.wav");
                 }
              }
           }
        }
     }
   if(木_0 != 1)
      return;
   临_st_7 = "buy";
   临_in_8 = 0;
   for(临_in_9 = OrdersTotal() - 1 ; 临_in_9 >= 0 ; 临_in_9 = 临_in_9 - 1)
     {
      总_in_69 = OrderSelect(临_in_9,SELECT_BY_POS,MODE_TRADES) ;
      if(OrderSymbol() != Symbol() || OrderMagicNumber() != Magic || OrderSymbol() != Symbol() || OrderMagicNumber() != Magic)
         continue;

      if(临_st_7 == "buy" && OrderType() == 0)
        {
         临_in_8 = 临_in_8 + 1;
        }
      if(临_st_7 == "sell" && OrderType() == 1)
        {
         临_in_8 = 临_in_8 + 1;
        }
      if(临_st_7 == "buystop" && OrderType() == 4)
        {
         临_in_8 = 临_in_8 + 1;
        }
      if(临_st_7 != "sellstop" || OrderType() != 5)
         continue;
      临_in_8 = 临_in_8 + 1;
     }
   临_in_10 = 临_in_8;
   临_st_11 = "sell";
   临_in_12 = 0;
   for(临_in_13 = OrdersTotal() - 1 ; 临_in_13 >= 0 ; 临_in_13 = 临_in_13 - 1)
     {
      总_in_69 = OrderSelect(临_in_13,SELECT_BY_POS,MODE_TRADES) ;
      if(OrderSymbol() != Symbol() || OrderMagicNumber() != Magic || OrderSymbol() != Symbol() || OrderMagicNumber() != Magic)
         continue;

      if(临_st_11 == "buy" && OrderType() == 0)
        {
         临_in_12 = 临_in_12 + 1;
        }
      if(临_st_11 == "sell" && OrderType() == 1)
        {
         临_in_12 = 临_in_12 + 1;
        }
      if(临_st_11 == "buystop" && OrderType() == 4)
        {
         临_in_12 = 临_in_12 + 1;
        }
      if(临_st_11 != "sellstop" || OrderType() != 5)
         continue;
      临_in_12 = 临_in_12 + 1;
     }
   if(临_in_10 + 临_in_12 <= 0)
      return;
   子_in_7 = 0 ;
   if(木_3 != "Button5" || 总_bo_34 != 1)
      return;
   子_in_8 = MessageBox("点击确定(Y)表示将全部平仓!是否继续?","友情提醒：",52) ;
   if(子_in_8 != 6)
      return;
   临_st_14 = "Ticket";
   临_st_15 = "sell";
   临_in_16 = 0;
   临_do_17 = 0.0;
   for(临_in_18 = OrdersTotal() - 1 ; 临_in_18 >= 0 ; 临_in_18 = 临_in_18 - 1)
     {
      if(!(OrderSelect(临_in_18,SELECT_BY_POS,MODE_TRADES)) || OrderSymbol() != Symbol() || OrderMagicNumber() != Magic)
         continue;

      if(临_st_15 == "buy" && OrderType() == 0 && OrderTicket() > 临_in_16)
        {
         OrderOpenTime();
         OrderOpenPrice();
         临_do_17 = OrderLots();
         临_in_16 = OrderTicket();
        }
      if(临_st_15 != "sell" || OrderType() != 1 || OrderTicket() <= 临_in_16)
         continue;
      OrderOpenTime();
      OrderOpenPrice();
      临_do_17 = OrderLots();
      临_in_16 = OrderTicket();
     }
   if(临_st_14 == "Ticket")
     {
      临_do_19 = 临_in_16;
     }
   else
     {
      if(临_st_14 == "Lots")
        {
         临_do_19 = 临_do_17;
        }
      else
        {
         临_do_19 = 0.0;
        }
     }
   临_in_20 = 临_do_19;
   临_st_21 = "Ticket";
   临_st_22 = "buy";
   临_in_23 = 0;
   临_do_24 = 0.0;
   for(临_in_25 = OrdersTotal() - 1 ; 临_in_25 >= 0 ; 临_in_25 = 临_in_25 - 1)
     {
      if(!(OrderSelect(临_in_25,SELECT_BY_POS,MODE_TRADES)) || OrderSymbol() != Symbol() || OrderMagicNumber() != Magic)
         continue;

      if(临_st_22 == "buy" && OrderType() == 0 && OrderTicket() > 临_in_23)
        {
         OrderOpenTime();
         OrderOpenPrice();
         临_do_24 = OrderLots();
         临_in_23 = OrderTicket();
        }
      if(临_st_22 != "sell" || OrderType() != 1 || OrderTicket() <= 临_in_23)
         continue;
      OrderOpenTime();
      OrderOpenPrice();
      临_do_24 = OrderLots();
      临_in_23 = OrderTicket();
     }
   if(临_st_21 == "Ticket")
     {
      临_do_26 = 临_in_23;
     }
   else
     {
      if(临_st_21 == "Lots")
        {
         临_do_26 = 临_do_24;
        }
      else
        {
         临_do_26 = 0.0;
        }
     }
   if(OrderCloseBy(临_do_26,临_in_20,0xFFFFFFFF))
     {
      do
        {
         临_st_27 = "Ticket";
         临_st_28 = "sell";
         临_in_29 = 0;
         临_do_30 = 0.0;
         for(临_in_31 = OrdersTotal() - 1 ; 临_in_31 >= 0 ; 临_in_31 = 临_in_31 - 1)
           {
            if(!(OrderSelect(临_in_31,SELECT_BY_POS,MODE_TRADES)) || OrderSymbol() != Symbol() || OrderMagicNumber() != Magic)
               continue;

            if(临_st_28 == "buy" && OrderType() == 0 && OrderTicket() > 临_in_29)
              {
               OrderOpenTime();
               OrderOpenPrice();
               临_do_30 = OrderLots();
               临_in_29 = OrderTicket();
              }
            if(临_st_28 != "sell" || OrderType() != 1 || OrderTicket() <= 临_in_29)
               continue;
            OrderOpenTime();
            OrderOpenPrice();
            临_do_30 = OrderLots();
            临_in_29 = OrderTicket();
           }
         if(临_st_27 == "Ticket")
           {
            临_do_32 = 临_in_29;
           }
         else
           {
            if(临_st_27 == "Lots")
              {
               临_do_32 = 临_do_30;
              }
            else
              {
               临_do_32 = 0.0;
              }
           }
         临_in_33 = 临_do_32;
         临_st_34 = "Ticket";
         临_st_35 = "buy";
         临_in_36 = 0;
         临_do_37 = 0.0;
         for(临_in_38 = OrdersTotal() - 1 ; 临_in_38 >= 0 ; 临_in_38 = 临_in_38 - 1)
           {
            if(!(OrderSelect(临_in_38,SELECT_BY_POS,MODE_TRADES)) || OrderSymbol() != Symbol() || OrderMagicNumber() != Magic)
               continue;

            if(临_st_35 == "buy" && OrderType() == 0 && OrderTicket() > 临_in_36)
              {
               OrderOpenTime();
               OrderOpenPrice();
               临_do_37 = OrderLots();
               临_in_36 = OrderTicket();
              }
            if(临_st_35 != "sell" || OrderType() != 1 || OrderTicket() <= 临_in_36)
               continue;
            OrderOpenTime();
            OrderOpenPrice();
            临_do_37 = OrderLots();
            临_in_36 = OrderTicket();
           }
         if(临_st_34 == "Ticket")
           {
            临_do_39 = 临_in_36;
           }
         else
           {
            if(临_st_34 == "Lots")
              {
               临_do_39 = 临_do_37;
              }
            else
              {
               临_do_39 = 0.0;
              }
           }
        }
      while(OrderCloseBy(临_do_39,临_in_33,0xFFFFFFFF));
     }
   for(子_in_9 = OrdersTotal() - 1 ; 子_in_9 >= 0 ; 子_in_9 = 子_in_9 - 1)
     {
      总_in_69 = OrderSelect(子_in_9,SELECT_BY_POS,MODE_TRADES) ;
      if(OrderSymbol() != Symbol() || OrderMagicNumber() != Magic)
         continue;

      if(OrderType() == 0)
        {
         子_in_7 = OrderClose(OrderTicket(),OrderLots(),MarketInfo(OrderSymbol(),9),5,Red) ;
        }
      if(OrderType() == 1)
        {
         子_in_7 = OrderClose(OrderTicket(),OrderLots(),MarketInfo(OrderSymbol(),10),5,Red) ;
        }
      if((OrderType() == 4 || OrderType() == 5))
        {
         总_in_69 = OrderDelete(OrderTicket(),0xFFFFFFFF) ;
        }
      if(子_in_7 <= 0)
         continue;
      PlaySound("ok.wav");
     }
  }
//OnChartEvent
//---------------------  ----------------------------------------

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
int deinit()
  {

//----------------------------

   ObjectDelete("HLINE_LONGII");
   ObjectDelete("HLINE_SHORTII");
   ObjectDelete("HLINE_LONG");
   ObjectDelete("HLINE_SHORT");
//ObjectsDeleteAll(0,-1);
   return(0);
  }
//deinit
//---------------------  ----------------------------------------

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
int lizong_7(int 木_0)
  {
   int         子_in_1;
   int         子_in_2;
   int         子_in_3;
   int         子_in_4;
   bool        子_bo_5;
   int         子_in_6;

//----------------------------

   子_in_3 = 0 ;
   子_in_4 = 0 ;
   子_bo_5 = true ;
   for(; ;)
     {
      for(子_in_6 = OrdersTotal() - 1 ; 子_in_6 >= 0 ; 子_in_6 = 子_in_6 - 1)
        {
         if(!(OrderSelect(子_in_6,SELECT_BY_POS,MODE_TRADES)) || OrderSymbol() != Symbol() || OrderMagicNumber() != Magic)
            continue;
         子_in_3 = OrderType() ;
         if(子_in_3 == 0 && (木_0 == 1 || 木_0 == 0))
           {
            子_bo_5 = OrderClose(OrderTicket(),OrderLots(),NormalizeDouble(Bid,Digits()),总_in_22,Blue) ;
            if(子_bo_5)
              {
               Comment("",OrderTicket(),"",OrderProfit(),"     ",TimeToString(TimeCurrent(),TIME_SECONDS));
              }
           }
         if(子_in_3 == 1 && (木_0 == -1 || 木_0 == 0))
           {
            子_bo_5 = OrderClose(OrderTicket(),OrderLots(),NormalizeDouble(Ask,Digits()),总_in_22,Red) ;
            if(子_bo_5)
              {
               Comment("",OrderTicket(),"",OrderProfit(),"     ",TimeToString(TimeCurrent(),TIME_SECONDS));
              }
           }
         if(子_in_3 == 4 && (木_0 == 1 || 木_0 == 0))
           {
            子_bo_5 = OrderDelete(OrderTicket(),0xFFFFFFFF) ;
           }
         if(子_in_3 == 5 && (木_0 == -1 || 木_0 == 0))
           {
            子_bo_5 = OrderDelete(OrderTicket(),0xFFFFFFFF) ;
           }
         if(子_bo_5)
            continue;
         子_in_1 = GetLastError() ;
         if(子_in_1 < 2)
            continue;

         if(子_in_1 == 129)
           {
            Comment("",TimeToString(TimeCurrent(),TIME_SECONDS));
            RefreshRates();
            continue;
           }
         if(子_in_1 == 146)
           {
            if(!(IsTradeContextBusy()))
               continue;
            Sleep(2000);
            continue;
           }
         Comment("",子_in_1,"",OrderTicket(),"     ",TimeToString(TimeCurrent(),TIME_SECONDS));
        }
      子_in_4 = 0 ;
      for(子_in_6 = 0 ; 子_in_6 < OrdersTotal() ; 子_in_6 = 子_in_6 + 1)
        {
         if(!(OrderSelect(子_in_6,SELECT_BY_POS,MODE_TRADES)) || OrderSymbol() != Symbol() || OrderMagicNumber() != Magic)
            continue;
         子_in_3 = OrderType() ;
         if((子_in_3 == 4 || 子_in_3 == 0) && (木_0 == 1 || 木_0 == 0))
           {
            子_in_4 = 子_in_4 + 1;
           }
         if((子_in_3  !=  5 && 子_in_3 != 1) || (木_0  !=  -1 && 木_0 != 0))
            continue;
         子_in_4 = 子_in_4 + 1;
        }
      if(子_in_4 == 0)
         break;
      子_in_2 = 子_in_2 + 1;
      if(子_in_2 > 10)
        {
         Alert(Symbol(),"平仓超过10次",子_in_4);
         return(0);
        }
      Sleep(1000);
      RefreshRates();
      continue;
     }
   return(1);
  }
//lizong_7
//---------------------  ----------------------------------------

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
int lizong_8(int 木_0)
  {

//----------------------------

   if(木_0 > 43200)
     {
      return(0);
     }
   if(木_0 > 10080)
     {
      return(43200);
     }
   if(木_0 > 1440)
     {
      return(10080);
     }
   if(木_0 > 240)
     {
      return(1440);
     }
   if(木_0 > 60)
     {
      return(240);
     }
   if(木_0 > 30)
     {
      return(60);
     }
   if(木_0 > 15)
     {
      return(30);
     }
   if(木_0 > 5)
     {
      return(15);
     }
   if(木_0 > 1)
     {
      return(5);
     }
   if(木_0 == 1)
     {
      return(1);
     }
   if(木_0 == 0)
     {
      return(Period());
     }
   return(0);
  }
//lizong_8
//---------------------  ----------------------------------------

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void lizong_9(int 木_0,int 木_1,int 木_2,int 木_3)
  {

//----------------------------
   int        临_in_1;
   int        临_in_2;
   int        临_in_3;
   double     临_do_4;
   int        临_in_5;

   while(木_2 > 0)
     {
      临_in_1 = 木_1;
      临_in_2 = 木_0;
      临_in_3 = -1;
      临_do_4 = 0.0;
      for(临_in_5 = OrdersTotal() - 1 ; 临_in_5 >= 0 ; 临_in_5 = 临_in_5 - 1)
        {
         if(!(OrderSelect(临_in_5,SELECT_BY_POS,MODE_TRADES)) || OrderSymbol() != Symbol() || (OrderMagicNumber()  !=  临_in_1 && 临_in_1 != -1) || (OrderType()  !=  临_in_2 && 临_in_2 != -100))
            continue;

         if(木_3 == 1 && 临_do_4<OrderProfit())
           {
            临_do_4 = OrderProfit();
            临_in_3 = OrderTicket();
           }
         if(木_3 != 2 || (!(临_do_4>OrderProfit()) && !(临_do_4==0.0)))
            continue;
         临_do_4 = OrderProfit();
         临_in_3 = OrderTicket();
        }
      if(OrderSelect(临_in_3,SELECT_BY_TICKET,MODE_TRADES))
        {
         if(木_3 == 1 && OrderProfit()>=0.0 && OrderClose(OrderTicket(),OrderLots(),OrderClosePrice(),0,0xFFFFFFFF))
           {
            木_2 = 木_2 - 1;
           }
         if(木_3 == 1 && OrderProfit()<0.0)
           {
            木_2 = 木_2 - 1;
           }
         if(木_3 == 2 && OrderProfit()<0.0 && OrderClose(OrderTicket(),OrderLots(),OrderClosePrice(),0,0xFFFFFFFF))
           {
            木_2 = 木_2 - 1;
           }
         if(木_3 == 2 && OrderProfit()>=0.0)
           {
            木_2 = 木_2 - 1;
           }
        }
      else
        {
         木_2 = 木_2 - 1;
        }
     }
  }
//lizong_9
//---------------------  ----------------------------------------

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
double lizong_10(int 木_0,int 木_1,int 木_2,int 木_3)
  {
   double      子_x[100];
   int         子_in_1;
   int         子_in_2;
   double      子_do_3;

//----------------------------

   子_in_2 = 0 ;
   子_do_3 = 0.0 ;
   ArrayInitialize(子_x,0.0);
   子_in_1 = 0 ;
   for(子_in_2 = OrdersTotal() - 1 ; 子_in_2 >= 0 ; 子_in_2 = 子_in_2 - 1)
     {
      if(!(OrderSelect(子_in_2,SELECT_BY_POS,MODE_TRADES)) || OrderSymbol() != Symbol() || (OrderMagicNumber()  !=  木_1 && 木_1 != -1) || (OrderType()  !=  木_0 && 木_0 != -100))
         continue;

      if(木_2 == 1 && OrderProfit()>=0.0)
        {
         子_x[子_in_1] = OrderProfit();
         子_in_1 = 子_in_1 + 1;
        }
      if(木_2 != 2 || !(OrderProfit()<0.0))
         continue;
      子_x[子_in_1] =  -(OrderProfit());
      子_in_1 = 子_in_1 + 1;
     }
   ArraySort(子_x,0,0,2);
   子_do_3 = 0.0 ;
   for(子_in_2 = 0 ; 子_in_2 < 木_3 ; 子_in_2 = 子_in_2 + 1)
     {
      子_do_3 = 子_do_3 + 子_x[子_in_2] ;
     }
   return(子_do_3);
  }
//lizong_10
//---------------------  ----------------------------------------

//+------------------------------------------------------------------+
