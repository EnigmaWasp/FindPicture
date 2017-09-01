//---------------------------------------------------------------------------

#include <vcl.h>
#include <stdio.h>
#pragma hdrstop

#include "Unit1.h"
#include "Unit2.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1 *Form1;
int level;
TPoint vibraniy;
int Ochki;
int Record;
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
        : TForm(Owner)
{
randomize();
Record=-1;
}
//---------------------------------------------------------------------------
void __fastcall TForm1::FormCreate(TObject *Sender)
{
level=0;
NewLevel();
if(FileExists("Records.rec"))
{
FILE*f=fopen("Records.rec","r");
fscanf(f,"%d",&Record);
fclose(f);
}
}

void __fastcall TForm1::LoadImage()
{
 Image1->Picture->LoadFromFile(IntToStr(level)+".bmp");
}

void __fastcall TForm1::NewLevel()
{
level++;
Ochki+=100;
lbOchki->Caption="Очки:"+IntToStr(Ochki);
if(level>10)
        {
        ShowMessage("Вы прошли игру");
        if(Record==-1)
                {
                ShowMessage("Игра была пройдена в первый раз\nРекорд:"+IntToStr(Ochki));
                SaveResult();
                }
        else
        {
        if(Ochki>Record)
                {
                ShowMessage("Новый рекорд:"+IntToStr(Ochki));
                SaveResult();
                }
        }

        }

        else
        {
        LoadImage();

        vibraniy.x=random(361);
        vibraniy.y=random(361);
        Image2->Canvas->CopyRect(Rect(0,0,100,100),Image1->Canvas,Rect(vibraniy.x,vibraniy.y,vibraniy.x+40,vibraniy.y+40));
        Timer1->Enabled=true;
        }
}

//---------------------------------------------------------------------------

void __fastcall TForm1::SpeedButton1Click(TObject *Sender)
{
Application->CreateForm(__classid(TForm2), &Form2);
Timer1->Enabled=false;
Form2->ShowModal();
Timer1->Enabled=true;
}
//---------------------------------------------------------------------------


void __fastcall TForm1::Image1MouseDown(TObject *Sender,
      TMouseButton Button, TShiftState Shift, int X, int Y)
{
if((X>=vibraniy.x)&&(X<=vibraniy.x+40)&&(Y>=vibraniy.y)&&(Y<=vibraniy.y+40))
       {
       Timer1->Enabled=false;
       ShowMessage("Правильно");
       NewLevel();
       }
       else
       {
       Ochki-=20;
       lbOchki->Caption="Очки:"+IntToStr(Ochki);
       }

}
//---------------------------------------------------------------------------

void __fastcall TForm1::Timer1Timer(TObject *Sender)
{
Ochki-=5;
lbOchki->Caption="Очки:"+IntToStr(Ochki);
if(Ochki<-200)
        {
         Timer1->Enabled=false;
         ShowMessage("Простите, но вы слишком\n много раз ошибались, или долго думали");
        }
if(Record!=-1)
        {
        Caption="Найди картинку      Рекорд:"+IntToStr(Record);
        }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button1Click(TObject *Sender)
{
Ochki-=50;
       vibraniy.x=random(361);
        vibraniy.y=random(361);
        Image2->Canvas->CopyRect(Rect(0,0,100,100),Image1->Canvas,Rect(vibraniy.x,vibraniy.y,vibraniy.x+40,vibraniy.y+40));

}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button2Click(TObject *Sender)
{
Ochki-=200;
Image1->Canvas->Brush->Style=bsClear;
Image1->Canvas->Rectangle(Rect(vibraniy.x,vibraniy.y,vibraniy.x+40,vibraniy.y+40));
}
//---------------------------------------------------------------------------


void __fastcall TForm1::SaveResult()
{
FILE*f=fopen("Records.rec","w");
fprintf(f,"%d",Ochki);
fclose(f);
}

void __fastcall TForm1::FormMouseDown(TObject *Sender, TMouseButton Button,
      TShiftState Shift, int X, int Y)
{
SaveResult();
}
//---------------------------------------------------------------------------

