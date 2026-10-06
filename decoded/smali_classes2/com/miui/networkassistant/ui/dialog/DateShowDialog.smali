.class public Lcom/miui/networkassistant/ui/dialog/DateShowDialog;
.super Lcom/miui/common/base/ui/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/networkassistant/ui/dialog/DateShowDialog$DateDialogListener;
    }
.end annotation


# instance fields
.field private mCurrentDate:I

.field private mDateDialogListener:Lcom/miui/networkassistant/ui/dialog/DateShowDialog$DateDialogListener;

.field private mNumberPicker:Lmiuix/pickerwidget/widget/NumberPicker;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/DateShowDialog$DateDialogListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/common/base/ui/a;-><init>(Landroid/app/Activity;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/miui/networkassistant/ui/dialog/DateShowDialog;->mCurrentDate:I

    iput-object p2, p0, Lcom/miui/networkassistant/ui/dialog/DateShowDialog;->mDateDialogListener:Lcom/miui/networkassistant/ui/dialog/DateShowDialog$DateDialogListener;

    return-void
.end method


# virtual methods
.method public buildDateDialog(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/miui/networkassistant/ui/dialog/DateShowDialog;->buildDateDialog(Ljava/lang/String;I)V

    return-void
.end method

.method public buildDateDialog(Ljava/lang/String;I)V
    .locals 0

    iput p2, p0, Lcom/miui/networkassistant/ui/dialog/DateShowDialog;->mCurrentDate:I

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

    const v1, 0x7f0e012c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    const p1, 0x7f0b02e2

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/pickerwidget/widget/NumberPicker;

    iput-object p1, p0, Lcom/miui/networkassistant/ui/dialog/DateShowDialog;->mNumberPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    const/16 v0, 0x1f

    invoke-virtual {p1, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->setMaxValue(I)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/dialog/DateShowDialog;->mNumberPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->setMinValue(I)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/dialog/DateShowDialog;->mNumberPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    iget v0, p0, Lcom/miui/networkassistant/ui/dialog/DateShowDialog;->mCurrentDate:I

    invoke-virtual {p1, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->setValue(I)V

    return-void
.end method

.method protected onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/miui/networkassistant/ui/dialog/DateShowDialog;->mDateDialogListener:Lcom/miui/networkassistant/ui/dialog/DateShowDialog$DateDialogListener;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/DateShowDialog;->mNumberPicker:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v0}, Lmiuix/pickerwidget/widget/NumberPicker;->getValue()I

    move-result v0

    invoke-interface {p2, v0}, Lcom/miui/networkassistant/ui/dialog/DateShowDialog$DateDialogListener;->onDateUpdated(I)V

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method protected onShow(Lmiuix/appcompat/app/AlertDialog;)V
    .locals 0

    return-void
.end method
