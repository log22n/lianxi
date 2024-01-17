//+------------------------------------------------------------------+
//|                                                       NoLoss.mq4 |
//|                             Copyright 2024, Trade Smart fx Tools |
//|                                 https://tradesmartfxtools.online |
//+------------------------------------------------------------------+
#property copyright " Copyright 2024, Trade Smart fx Tools"
#property link      " https://tradesmartfxtools.online"
#property version   "1.00"
#property strict


extern double initialsize = 1; // initialsize
double lotSize = 0.00;
extern int MaxBuy = 10; // MaxBuy
extern int MaxSell = 10; // MaxSell
extern double OverallBuyProfit = 20.00; // OverallBuyProfit (combined for all buy orders).
extern double OverallSellProfit = 20.00; // OverallSellProfit (combined for all sell orders).
extern int Slippage = 10; // Enter your slippage
extern int DistanceBetweenOrdersInPips = 50; //  DistanceBetweenOrdersInPips
double freeMargin = 0.00;
int magicNumber = 0607200401;

string labelName = "tradesmartfxtools.online";
string labelText = "EA by tradesmartfxtools.online";
int labelFontSize = 18;
color labelColor = Yellow;
int spaceFromBottom = 50;


// Function to check if there are open orders
bool CheckOpenOrders()
  {
   for(int i = 0; i < OrdersTotal(); i++)
     {
     bool order = OrderSelect(i, SELECT_BY_POS, MODE_TRADES);
      if(OrderSymbol() == Symbol())
         return(true);
     }
   return(false);
  }

void createOrUpdateLabel()
  {
// Check if the label already exists
   if(ObjectCreate(0, labelName, OBJ_LABEL, 0, 0, 0))
     {
      // Set label properties
    ObjectSetInteger(0, labelName, OBJPROP_COLOR, StringToInteger(labelText));
// Clear default text
      ObjectSetInteger(0, labelName, OBJPROP_CORNER, CORNER_LEFT_LOWER);  // Set the left-bottom corner
      ObjectSetInteger(0, labelName, OBJPROP_XDISTANCE, 10);  // Distance from the left edge
      ObjectSetInteger(0, labelName, OBJPROP_YDISTANCE, spaceFromBottom);  // Distance from the bottom edge
      ObjectSetInteger(0, labelName, OBJPROP_COLOR, labelColor);
      ObjectSetInteger(0, labelName, OBJPROP_FONTSIZE, labelFontSize);
      ObjectSetInteger(0, labelName, OBJPROP_SELECTABLE, false);
      ObjectSetInteger(0, labelName, OBJPROP_SELECTED, false);
      ObjectSetString(0, labelName, OBJPROP_TEXT, labelText);  // Set label text
     }
   
  }

//----------------------------------

//+------------------------------------------------------------------+
//|  Starting the EA                                                                |
//+------------------------------------------------------------------+
void StartingStep()
  {

   if(!CheckOpenOrders())
     {
      lotSize = initialsize;
      
       freeMargin = AccountFreeMarginCheck(_Symbol, OP_BUY, initialsize);
     
        if (freeMargin > 0) {

      int SellOrder = OrderSend(_Symbol, OP_SELL, lotSize, Bid, Slippage, 0, 0, "Sell Order", magicNumber, 0, Red);

      int BuyOrder = OrderSend(_Symbol, OP_BUY, lotSize, Ask, Slippage, 0,  0, "Buy Order", magicNumber, 0, Green);
      
      } else {
            Print(" Insufficent Balance");
           }

     }

  }



//+------------------------------------------------------------------+
//|    Close All Buy Orders If Profit Above                          |
//+------------------------------------------------------------------+

void CloseAllBuyOrdersIfProfitAbove(double threshold)
  {
   double totalBuyProfit = 0.0;

   for(int i = OrdersTotal() - 1; i >= 0; i--)
     {
      if(OrderSelect(i, SELECT_BY_POS, MODE_TRADES) && OrderSymbol() == _Symbol && OrderType() == OP_BUY)
        {
         totalBuyProfit += OrderProfit();
        }
     }


   if(totalBuyProfit >= threshold)
     {
      for(int i = OrdersTotal() - 1; i >= 0; i--)
        {
         if(OrderSelect(i, SELECT_BY_POS, MODE_TRADES) && OrderSymbol() == _Symbol && OrderType() == OP_BUY)
           {
            if(OrderClose(OrderTicket(), OrderLots(), Bid, 2, Blue) == true)
              {
               Print("Buy Order closed successfully. Ticket: ", OrderTicket());
              }
            else
              {
               Print("Error closing Buy Order. Error code: ", GetLastError());
              }
           }
        }
     }
  }

//+------------------------------------------------------------------+
//|    Close All Sell Orders If Profit Above                                                              |
//+------------------------------------------------------------------+


void CloseAllSellOrdersIfProfitAbove(double threshold)
  {
   double totalSellProfit = 0.0;

   for(int i = OrdersTotal() - 1; i >= 0; i--)
     {
      if(OrderSelect(i, SELECT_BY_POS, MODE_TRADES) && OrderSymbol() == _Symbol && OrderType() == OP_SELL)
        {
         totalSellProfit += OrderProfit();
        }
     }

   if(totalSellProfit >= threshold)
     {
      for(int i = OrdersTotal() - 1; i >= 0; i--)
        {
         if(OrderSelect(i, SELECT_BY_POS, MODE_TRADES) && OrderSymbol() == _Symbol && OrderType() == OP_SELL)
           {
            if(OrderClose(OrderTicket(), OrderLots(), Ask, 2, Red) == true)
              {
               Print("Sell Order closed successfully. Ticket: ", OrderTicket());
              }
            else
              {
               Print("Error closing Sell Order. Error code: ", GetLastError());
              }
           }
        }
     }
  }


//+------------------------------------------------------------------+
//|    Open Opposite Order If Only One Type                                                              |
//+------------------------------------------------------------------+
void OpenOppositeOrderIfOnlyOneType()
  {
   int totalSellOrders = 0;
   int totalBuyOrders = 0;

   for(int i = 0; i < OrdersTotal(); i++)
     {
      if(OrderSelect(i, SELECT_BY_POS, MODE_TRADES) && OrderSymbol() == _Symbol)
        {
         if(OrderType() == OP_SELL)
           {
            totalSellOrders++;
           }
         else
            if(OrderType() == OP_BUY)
              {
               totalBuyOrders++;
              }
        }
     }
     
     

   if(totalSellOrders > 0 && totalBuyOrders == 0)
     {
     
     freeMargin = AccountFreeMarginCheck(_Symbol, OP_BUY, initialsize);
     
        if (freeMargin > 0) {
     
      int orderResult = OrderSend(_Symbol, OP_BUY, initialsize, Ask, Slippage, 0, 0, "Opposite Order", magicNumber, 0);
      
      }
         else {
            Print(" Insufficent Balance");
           }
     }
   else
      if(totalBuyOrders > 0 && totalSellOrders == 0)
        {
        freeMargin = AccountFreeMarginCheck(_Symbol, OP_BUY, initialsize);
          if (freeMargin > 0) {      
         int orderResult = OrderSend(_Symbol, OP_SELL, initialsize, Bid, Slippage, 0,  0, "Opposite Order", magicNumber, 0);
         }
          else {
            Print(" Insufficent Balance");
           }
        }
  }


//+------------------------------------------------------------------+
//|    Calculate Total Last Two Open Buy LotSize                                                              |
//+------------------------------------------------------------------+

double CalculateTotalLastTwoOpenBuyLotSize()
  {
   double totalBuyLotSize = 0.0;
   int buyCount = 0;

   for(int i = OrdersTotal() - 1; i >= 0; i--)
     {
      if(buyCount >= 2)
        {
         break;
        }

      if(OrderSelect(i, SELECT_BY_POS, MODE_TRADES) && OrderSymbol() == _Symbol && OrderType() == OP_BUY)
        {
         // Accumulate the lot size for open buy orders
         totalBuyLotSize += OrderLots();
         buyCount++;
        }
     }

   return totalBuyLotSize;
  }

//+------------------------------------------------------------------+
//|   Check And Open Buy Order                                                             |
//+------------------------------------------------------------------+

void CheckAndOpenBuyOrder()
  {

   string symbol = Symbol();


   int lastBuyOrder = -1;
   for(int i = OrdersTotal() - 1; i >= 0; i--)
     {
      if(OrderSelect(i, SELECT_BY_POS, MODE_TRADES) && OrderSymbol() == symbol && OrderType() == OP_BUY)
        {
         lastBuyOrder = i;
         break;
        }
     }


   if(lastBuyOrder >= 0)
     {
      bool orderselect = OrderSelect(lastBuyOrder, SELECT_BY_POS, MODE_TRADES);

      double openPrice = OrderOpenPrice();
      double currentPrice = SymbolInfoDouble(symbol, SYMBOL_ASK);
      double pipSize = SymbolInfoDouble(symbol, SYMBOL_POINT);

      // Print(openPrice - currentPrice , "pip: " , DistanceBetweenOrdersInPips * pipSize);

      double totalLastTwoOpenBuyLotSize = CalculateTotalLastTwoOpenBuyLotSize();


      if((openPrice - currentPrice) >= DistanceBetweenOrdersInPips * pipSize)
        {
        
        freeMargin = AccountFreeMarginCheck(_Symbol, OP_BUY, totalLastTwoOpenBuyLotSize);
        
        if (freeMargin > 0) {

         int orderResult = OrderSend(symbol, OP_BUY, totalLastTwoOpenBuyLotSize, currentPrice, Slippage, 0, 0, "Buy Order", magicNumber, 0, Blue);

         if(orderResult > 0)
           {
            Print("Buy order opened successfully");

           }
         else
           {
            Print("Error opening buy order second: ", GetLastError());
           }
           } else {
           
            Print(" Insufficent Balance");
           
           }
        }
      else
        {
         //  Print("Distance between last buy order and current price is less than 50 pips. Not opening a new buy order.");
        }
     }
   else
     {
      Print("No open buy orders found.");
     }
  }

//+------------------------------------------------------------------+
//|   Calculate Total Last Two Open Sell LotSize                                                            |
//+------------------------------------------------------------------+


double CalculateTotalLastTwoOpenSellLotSize()
  {
   double totalSellLotSize = 0.0;
   int sellCount = 0;

   for(int i = OrdersTotal() - 1; i >= 0; i--)
     {
      if(sellCount >= 2)
        {
         break;
        }

      if(OrderSelect(i, SELECT_BY_POS, MODE_TRADES) && OrderSymbol() == _Symbol && OrderType() == OP_SELL)
        {
         totalSellLotSize += OrderLots();
         sellCount++;
        }
     }

   return totalSellLotSize;
  }

//+------------------------------------------------------------------+
//|   Check And Open Sell Order                                                            |
//+------------------------------------------------------------------+

void CheckAndOpenSellOrder()
  {

   string symbol = Symbol();

   int lastSellOrder = -1;
   for(int i = OrdersTotal() - 1; i >= 0; i--)
     {
      if(OrderSelect(i, SELECT_BY_POS, MODE_TRADES) && OrderSymbol() == symbol && OrderType() == OP_SELL)
        {
         lastSellOrder = i;
         break;
        }
     }

   if(lastSellOrder >= 0)
     {
   bool orderselect2 =  OrderSelect(lastSellOrder, SELECT_BY_POS, MODE_TRADES);

      double openPrice = OrderOpenPrice();
      double currentPrice = SymbolInfoDouble(symbol, SYMBOL_BID);
      double pipSize = SymbolInfoDouble(symbol, SYMBOL_POINT);
      double totalLastTwoOpenSellLotSize = CalculateTotalLastTwoOpenSellLotSize();

      if((currentPrice - openPrice) >= DistanceBetweenOrdersInPips * pipSize)
        {
        
         freeMargin = AccountFreeMarginCheck(_Symbol, OP_SELL, totalLastTwoOpenSellLotSize);
         
          if (freeMargin > 0) {

         int orderResult = OrderSend(symbol, OP_SELL, totalLastTwoOpenSellLotSize, currentPrice, Slippage, 0, 0, "Sell Order", magicNumber, 0, Red);

         if(orderResult > 0)
           {
            Print("Sell order opened successfully");

           }
         else
           {
            Print("Error opening sell order: ", GetLastError());
           }
           
           } else {
           
            Print(" Insufficent Balance");
           
           }
        }
      else
        {
         // Print("Distance between last sell order and current price is less than 50 pips. Not opening a new sell order.");
        }
     }
   else
     {
      Print("No open sell orders found.");
     }
  }

//+------------------------------------------------------------------+
//|   Get Total Open Sell Orders                                                            |
//+------------------------------------------------------------------+


int GetTotalOpenSellOrders()
  {
   int openSellOrders = 0;

   for(int i = OrdersTotal() - 1; i >= 0; i--)
     {
      if(OrderSelect(i, SELECT_BY_POS, MODE_TRADES) && OrderSymbol() == _Symbol && OrderType() == OP_SELL)
        {
         openSellOrders++;
        }
     }

   return openSellOrders;
  }


//+------------------------------------------------------------------+
//|   Get Total Open Buy Orders                                        |
//+------------------------------------------------------------------+


int GetTotalOpenBuyOrders()
  {
   int openBuyOrders = 0;

   for(int i = OrdersTotal() - 1; i >= 0; i--)
     {
      if(OrderSelect(i, SELECT_BY_POS, MODE_TRADES) && OrderSymbol() == _Symbol && OrderType() == OP_BUY)
        {
         openBuyOrders++;
        }
     }

   return openBuyOrders;
  }
  
 //+------------------------------------------------------------------+
//| Check if another order can be placed                             |
//+------------------------------------------------------------------+
bool IsNewOrderAllowed()
  {

   int max_allowed_orders=(int)AccountInfoInteger(ACCOUNT_LIMIT_ORDERS);

   if(max_allowed_orders==0) return(true);

   int orders=OrdersTotal();

   return(orders<max_allowed_orders);
  }


//+------------------------------------------------------------------+
//|   OnInit Function                                                               |
//+------------------------------------------------------------------+
int OnInit()
  {
//---

   createOrUpdateLabel();
   StartingStep();

//---
   return(INIT_SUCCEEDED);
  }
//+------------------------------------------------------------------+
//| Expert deinitialization function                                 |
//+------------------------------------------------------------------+
void OnDeinit(const int reason)
  {
//---

  }
//+------------------------------------------------------------------+
//| Expert tick function                                             |
//+------------------------------------------------------------------+
void OnTick()
  {
  
  if (IsNewOrderAllowed())
    {
 
  OpenOppositeOrderIfOnlyOneType();
  
   int totalOpenSellOrders = GetTotalOpenSellOrders();

   if(totalOpenSellOrders < MaxSell)
     {
      CheckAndOpenSellOrder();
     }
   else
     {
      Print("Max sell orders reached. Cannot open new sell order.");
     }


////////////////////////////////////////////////////

 

   int totalOpenBuyOrders = GetTotalOpenBuyOrders();


   if(totalOpenBuyOrders < MaxBuy)
     {

      CheckAndOpenBuyOrder();

     }
   else
     {
      Print("Max buy orders reached. Cannot open new buy order.");
     }
     
     }  else
    {
        Print("Cannot open new order. Maximum orders reached.");
    }

/////////////////////////////////////////

   CloseAllBuyOrdersIfProfitAbove(OverallBuyProfit);

   CloseAllSellOrdersIfProfitAbove(OverallSellProfit);

/////////////////////////////////////////



  }
//+------------------------------------------------------------------+
