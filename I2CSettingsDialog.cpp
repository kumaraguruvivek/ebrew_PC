// ==========================================================================
// Filename    : $Id$
// Author      : E. van de Logt
// Purpose     : Provides a form where parameters for the I2C Bus related
//               settings can be modified.
// --------------------------------------------------------------------------
// $Log$
// Revision 1.3  2003/09/15 20:37:21  emile
// - LM76 constants renamed in LM92 constants
// - Pump Popupmenu added (same as already done for the valves)
// - Added support for LED3 and LED4 displays
// - 'I2C settings' renamed into 'Hardware Settings'
// - Added more variables to LED1..LED4 selection. Now 6 variables to select
// - Added SET_LED macro
// - Added Triac Temperature protection functionality
//
// Revision 1.2  2002/12/30 13:33:44  emile
// - Headers with CVS tags added to every source file
// - Restore Settings function is added
// - "ebrew" registry key now in a define REGKEY
//
// ==========================================================================

//---------------------------------------------------------------------------
#include <vcl.h>
#pragma hdrstop

#include "I2CSettingsDialog.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TI2C_Settings *I2C_Settings;
//---------------------------------------------------------------------------
__fastcall TI2C_Settings::TI2C_Settings(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------

#define IDH_HARDWARESETTINGS (0x10090)
void __fastcall TI2C_Settings::Help_ButtonClick(TObject *Sender)
{
   Application->HelpContext(IDH_HARDWARESETTINGS);
}
//---------------------------------------------------------------------------

