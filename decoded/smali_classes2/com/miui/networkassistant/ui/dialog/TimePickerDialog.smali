.class public Lcom/miui/networkassistant/ui/dialog/TimePickerDialog;
.super Lcom/miui/common/base/ui/a;
.source "SourceFile"

# interfaces
.implements Lmiuix/pickerwidget/widget/TimePicker$f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/networkassistant/ui/dialog/TimePickerDialog$TimePickerDialogListener;
    }
.end annotation


# instance fields
.field private mActionFlag:I

.field private mHour:I

.field private mMinute:I

.field private mTimePicker:Lmiuix/pickerwidget/widget/TimePicker;

.field private mTimePickerDialogListener:Lcom/miui/networkassistant/ui/dialog/TimePickerDialog$TimePickerDialogListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/TimePickerDialog$TimePickerDialogListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/common/base/ui/a;-><init>(Landroid/app/Activity;)V

    iput-object p2, p0, Lcom/miui/networkassistant/ui/dialog/TimePickerDialog;->mTimePickerDialogListener:Lcom/miui/networkassistant/ui/dialog/TimePickerDialog$TimePickerDialogListener;

    return-void
.end method


# virtual methods
.method public buildTimePickerdialog(Ljava/lang/String;I)V
    .locals 0

    iput p2, p0, Lcom/miui/networkassistant/ui/dialog/TimePickerDialog;->mActionFlag:I

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

    const v1, 0x7f0e054f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    const p1, 0x7f0b0bc0

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/pickerwidget/widget/TimePicker;

    iput-object p1, p0, Lcom/miui/networkassistant/ui/dialog/TimePickerDialog;->mTimePicker:Lmiuix/pickerwidget/widget/TimePicker;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lmiuix/pickerwidget/widget/TimePicker;->set24HourView(Ljava/lang/Boolean;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/dialog/TimePickerDialog;->mTimePicker:Lmiuix/pickerwidget/widget/TimePicker;

    invoke-virtual {p1, p0}, Lmiuix/pickerwidget/widget/TimePicker;->setOnTimeChangedListener(Lmiuix/pickerwidget/widget/TimePicker$f;)V

    return-void
.end method

.method protected onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/miui/networkassistant/ui/dialog/TimePickerDialog;->mTimePickerDialogListener:Lcom/miui/networkassistant/ui/dialog/TimePickerDialog$TimePickerDialogListener;

    iget v0, p0, Lcom/miui/networkassistant/ui/dialog/TimePickerDialog;->mHour:I

    iget v1, p0, Lcom/miui/networkassistant/ui/dialog/TimePickerDialog;->mMinute:I

    iget v2, p0, Lcom/miui/networkassistant/ui/dialog/TimePickerDialog;->mActionFlag:I

    invoke-interface {p2, v0, v1, v2}, Lcom/miui/networkassistant/ui/dialog/TimePickerDialog$TimePickerDialogListener;->onTimeUpdated(III)V

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method protected onShow(Lmiuix/appcompat/app/AlertDialog;)V
    .locals 0

    return-void
.end method

.method public onTimeChanged(Lmiuix/pickerwidget/widget/TimePicker;II)V
    .locals 0

    iput p2, p0, Lcom/miui/networkassistant/ui/dialog/TimePickerDialog;->mHour:I

    iput p3, p0, Lcom/miui/networkassistant/ui/dialog/TimePickerDialog;->mMinute:I

    return-void
.end method

.method public setTimePicker(II)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/TimePickerDialog;->mTimePicker:Lmiuix/pickerwidget/widget/TimePicker;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmiuix/pickerwidget/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/dialog/TimePickerDialog;->mTimePicker:Lmiuix/pickerwidget/widget/TimePicker;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmiuix/pickerwidget/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    return-void
.end method
