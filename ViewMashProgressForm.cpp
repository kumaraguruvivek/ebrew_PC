// ==========================================================================
// Filename    : $Id$
// Author      : E. van de Logt
// Purpose     : Provides a form where the progress of the Mash Scheme can
//               be monitored.  
// --------------------------------------------------------------------------
// $Log$
// Revision 1.2  2002/12/30 13:33:45  emile
// - Headers with CVS tags added to every source file
// - Restore Settings function is added
// - "ebrew" registry key now in a define REGKEY
//
// ==========================================================================

//---------------------------------------------------------------------------
#include <vcl.h>
#pragma hdrstop

#include <stdio.h>
#include "ViewMashProgressForm.h"
#include "Unit1.h"
#include "misc.h"

//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "AnimTimer"
#pragma resource "*.dfm"
TViewMashProgress *ViewMashProgress;
//---------------------------------------------------------------------------
__fastcall TViewMashProgress::TViewMashProgress(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------

void __fastcall TViewMashProgress::CloseButtonClick(TObject *Sender)
{
   Hide(); // Hide modeless Dialog
}
//---------------------------------------------------------------------------

#define PRINT_TIMER_STATUS(timer,timeout)         \
         if (timer == NOT_STARTED)                \
         {                                        \
            strcat(s,"Not Started");              \
         } /* if */                               \
         else if (timer < timeout)                \
         {                                        \
            strcat(s,"Running");                  \
         }                                        \
         else                                     \
         {                                        \
            strcat(s,"Time-Out");                 \
         } /* else */                             \
         ViewMashProgress->Memo1->Lines->Add(s)

void __fastcall TViewMashProgress::UpdateTimerTimer(TObject *Sender)
{
   int i;
   char s[120];
   double cnv = MainForm->pid_pars.ts / 60.0; // convert 5 sec. ticks into minutes

   if (ViewMashProgress)
   {
      ViewMashProgress->Memo1->Lines->Clear();
      ViewMashProgress->Memo1->Lines->Add("Index\tTemp.\tTime\tTimer\tStatus");
      ViewMashProgress->Memo1->Lines->Add(BAR_LINE);
      for (i = 0; i < MainForm->ms_tot; i++)
      {
         sprintf(s,"%3d\t%6.0f\t%6.0f\t%6.0f\t",i,
                   MainForm->ms[i].temp,
                   MainForm->ms[i].time * cnv,
                   MainForm->ms[i].timer == NOT_STARTED ? 0.0 : MainForm->ms[i].timer * cnv);
         PRINT_TIMER_STATUS(MainForm->ms[i].timer, MainForm->ms[i].time);
      } // for

      ViewMashProgress->Memo1->Lines->Add(BAR_LINE);
      sprintf(s,"ebrew_std = %d, ms_idx = %d, sp_idx = %d, Vmash = %4.1f L",MainForm->std.ebrew_std,
                                                                            MainForm->ms_idx,
                                                                            MainForm->std.sp_idx,
                                                                            MainForm->std.vmash);
      ViewMashProgress->Memo1->Lines->Add(s);
      sprintf(s,"Timer1 (state  5-> 6) = %d/%d sec.",MainForm->std.timer1,MainForm->sp.sp_time_ticks);
      ViewMashProgress->Memo1->Lines->Add(s);
      sprintf(s,"Timer2 (state  8-> 7) = %d/%d sec.",MainForm->std.timer2,TIMEOUT_1SEC);
      ViewMashProgress->Memo1->Lines->Add(s);
      sprintf(s,"Timer3 (state 10->11) = %d/%d sec.",MainForm->std.timer3,TIMEOUT3);
      ViewMashProgress->Memo1->Lines->Add(s);
      sprintf(s,"Timer4 (state 11->10) = %d/%d sec.",MainForm->std.timer4,TIMEOUT4);
      ViewMashProgress->Memo1->Lines->Add(s);
      sprintf(s,"Timer5 (state 10->12) = %d/%d sec.",MainForm->std.timer5,MainForm->sp.boil_time_ticks);
      ViewMashProgress->Memo1->Lines->Add(s);
   } // if
} // TViewMashProgress::UpdateTimerTimer()
//---------------------------------------------------------------------------

