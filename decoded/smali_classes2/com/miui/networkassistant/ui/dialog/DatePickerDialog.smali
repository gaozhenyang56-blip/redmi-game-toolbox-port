.class public Lcom/miui/networkassistant/ui/dialog/DatePickerDialog;
.super Lcom/miui/common/base/ui/a;
.source "SourceFile"

# interfaces
.implements Lmiuix/pickerwidget/widget/DatePicker$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/networkassistant/ui/dialog/DatePickerDialog$DatePickerDialogListener;
    }
.end annotation


# instance fields
.field private mDatePicker:Lmiuix/pickerwidget/widget/DatePicker;

.field private mDay:I

.field private mListener:Lcom/miui/networkassistant/ui/dialog/DatePickerDialog$DatePickerDialogListener;

.field private mMonth:I

.field private mYear:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/DatePickerDialog$DatePickerDialogListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/common/base/ui/a;-><init>(Landroid/app/Activity;)V

    iput-object p2, p0, Lcom/miui/networkassistant/ui/dialog/DatePickerDialog;->mListener:Lcom/miui/networkassistant/ui/dialog/DatePickerDialog$DatePickerDialogListener;

    return-void
.end method


# virtual methods
.method public buildDatePickerDialog(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/common/base/ui/a;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/common/base/ui/a;->showDialog()V

    return-void
.end method

.method protected getNegativeButtonText()I
    .locals 1

    const v0, 0x7f12049a

    return v0
.end method

.method protected getPositiveButtonText()I
    .locals 1

    const v0, 0x7f120f49

    return v0
.end method

.method protected onBuild(Lmiuix/appcompat/app/AlertDialog;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/common/base/ui/a;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e053b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    const p1, 0x7f0b02e3

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/pickerwidget/widget/DatePicker;

    iput-object p1, p0, Lcom/miui/networkassistant/ui/dialog/DatePickerDialog;->mDatePicker:Lmiuix/pickerwidget/widget/DatePicker;

    return-void
.end method

.method protected onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/miui/networkassistant/ui/dialog/DatePickerDialog;->mListener:Lcom/miui/networkassistant/ui/dialog/DatePickerDialog$DatePickerDialogListener;

    iget v0, p0, Lcom/miui/networkassistant/ui/dialog/DatePickerDialog;->mYear:I

    iget v1, p0, Lcom/miui/networkassistant/ui/dialog/DatePickerDialog;->mMonth:I

    iget v2, p0, Lcom/miui/networkassistant/ui/dialog/DatePickerDialog;->mDay:I

    invoke-interface {p2, v0, v1, v2}, Lcom/miui/networkassistant/ui/dialog/DatePickerDialog$DatePickerDialogListener;->onDateChanged(III)V

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public onDateChanged(Lmiuix/pickerwidget/widget/DatePicker;IIIZ)V
    .locals 0

    iput p2, p0, Lcom/miui/networkassistant/ui/dialog/DatePickerDialog;->mYear:I

    iput p3, p0, Lcom/miui/networkassistant/ui/dialog/DatePickerDialog;->mMonth:I

    iput p4, p0, Lcom/miui/networkassistant/ui/dialog/DatePickerDialog;->mDay:I

    return-void
.end method

.method protected onShow(Lmiuix/appcompat/app/AlertDialog;)V
    .locals 0

    return-void
.end method

.method public setData(III)V
    .locals 0

    iput p1, p0, Lcom/miui/networkassistant/ui/dialog/DatePickerDialog;->mYear:I

    iput p2, p0, Lcom/miui/networkassistant/ui/dialog/DatePickerDialog;->mMonth:I

    iput p3, p0, Lcom/miui/networkassistant/ui/dialog/DatePickerDialog;->mDay:I

    iget-object p3, p0, Lcom/miui/networkassistant/ui/dialog/DatePickerDialog;->mDatePicker:Lmiuix/pickerwidget/widget/DatePicker;

    invoke-virtual {p3, p1, p2, p2, p0}, Lmiuix/pickerwidget/widget/DatePicker;->l(IIILmiuix/pickerwidget/widget/DatePicker$b;)V

    return-void
.end method
