.class public Lmiuix/appcompat/app/DatePickerDialog;
.super Lmiuix/appcompat/app/AlertDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/app/DatePickerDialog$OnDateSetListener;
    }
.end annotation


# instance fields
.field private final mCalendar:Lwl/a;

.field private final mCallBack:Lmiuix/appcompat/app/DatePickerDialog$OnDateSetListener;

.field private final mDatePicker:Lmiuix/pickerwidget/widget/DatePicker;

.field private mLunarModePanel:Landroid/view/View;

.field private mLunarModeState:Lmiuix/slidingwidget/widget/SlidingButton;

.field private mOnDateChangedListener:Lmiuix/pickerwidget/widget/DatePicker$b;

.field private mTitleNeedsUpdate:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ILmiuix/appcompat/app/DatePickerDialog$OnDateSetListener;III)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lmiuix/appcompat/app/DatePickerDialog;->mTitleNeedsUpdate:Z

    new-instance p1, Lmiuix/appcompat/app/DatePickerDialog$1;

    invoke-direct {p1, p0}, Lmiuix/appcompat/app/DatePickerDialog$1;-><init>(Lmiuix/appcompat/app/DatePickerDialog;)V

    iput-object p1, p0, Lmiuix/appcompat/app/DatePickerDialog;->mOnDateChangedListener:Lmiuix/pickerwidget/widget/DatePicker$b;

    iput-object p3, p0, Lmiuix/appcompat/app/DatePickerDialog;->mCallBack:Lmiuix/appcompat/app/DatePickerDialog$OnDateSetListener;

    new-instance p1, Lwl/a;

    invoke-direct {p1}, Lwl/a;-><init>()V

    iput-object p1, p0, Lmiuix/appcompat/app/DatePickerDialog;->mCalendar:Lwl/a;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x104000a

    invoke-virtual {p1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    new-instance p3, Lmiuix/appcompat/app/DatePickerDialog$2;

    invoke-direct {p3, p0}, Lmiuix/appcompat/app/DatePickerDialog$2;-><init>(Lmiuix/appcompat/app/DatePickerDialog;)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p2, p3}, Lmiuix/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 p3, 0x1040000

    invoke-virtual {p2, p3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    const/4 p3, -0x2

    const/4 v0, 0x0

    invoke-virtual {p0, p3, p2, v0}, Lmiuix/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lmiuix/appcompat/app/AlertDialog;->setIcon(I)V

    const-string p2, "layout_inflater"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    sget p2, Lmiuix/appcompat/R$layout;->miuix_appcompat_date_picker_dialog:I

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    sget p2, Lmiuix/appcompat/R$id;->datePicker:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lmiuix/pickerwidget/widget/DatePicker;

    iput-object p2, p0, Lmiuix/appcompat/app/DatePickerDialog;->mDatePicker:Lmiuix/pickerwidget/widget/DatePicker;

    iget-object p3, p0, Lmiuix/appcompat/app/DatePickerDialog;->mOnDateChangedListener:Lmiuix/pickerwidget/widget/DatePicker$b;

    invoke-virtual {p2, p4, p5, p6, p3}, Lmiuix/pickerwidget/widget/DatePicker;->l(IIILmiuix/pickerwidget/widget/DatePicker$b;)V

    invoke-direct {p0, p4, p5, p6}, Lmiuix/appcompat/app/DatePickerDialog;->updateTitle(III)V

    sget p2, Lmiuix/appcompat/R$id;->lunarModePanel:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lmiuix/appcompat/app/DatePickerDialog;->mLunarModePanel:Landroid/view/View;

    sget p2, Lmiuix/appcompat/R$id;->datePickerLunar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/slidingwidget/widget/SlidingButton;

    iput-object p1, p0, Lmiuix/appcompat/app/DatePickerDialog;->mLunarModeState:Lmiuix/slidingwidget/widget/SlidingButton;

    new-instance p2, Lmiuix/appcompat/app/s;

    invoke-direct {p2, p0}, Lmiuix/appcompat/app/s;-><init>(Lmiuix/appcompat/app/DatePickerDialog;)V

    invoke-virtual {p1, p2}, Lmiuix/slidingwidget/widget/SlidingButton;->setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiuix/appcompat/app/DatePickerDialog$OnDateSetListener;III)V
    .locals 7

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lmiuix/appcompat/app/DatePickerDialog;-><init>(Landroid/content/Context;ILmiuix/appcompat/app/DatePickerDialog$OnDateSetListener;III)V

    return-void
.end method

.method static synthetic access$000(Lmiuix/appcompat/app/DatePickerDialog;)Z
    .locals 0

    iget-boolean p0, p0, Lmiuix/appcompat/app/DatePickerDialog;->mTitleNeedsUpdate:Z

    return p0
.end method

.method static synthetic access$100(Lmiuix/appcompat/app/DatePickerDialog;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lmiuix/appcompat/app/DatePickerDialog;->updateTitle(III)V

    return-void
.end method

.method static synthetic access$200(Lmiuix/appcompat/app/DatePickerDialog;)V
    .locals 0

    invoke-direct {p0}, Lmiuix/appcompat/app/DatePickerDialog;->tryNotifyDateSet()V

    return-void
.end method

.method public static synthetic e(Lmiuix/appcompat/app/DatePickerDialog;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/app/DatePickerDialog;->lambda$new$0(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/widget/CompoundButton;Z)V
    .locals 0

    iget-object p1, p0, Lmiuix/appcompat/app/DatePickerDialog;->mDatePicker:Lmiuix/pickerwidget/widget/DatePicker;

    invoke-virtual {p1, p2}, Lmiuix/pickerwidget/widget/DatePicker;->setLunarMode(Z)V

    return-void
.end method

.method private tryNotifyDateSet()V
    .locals 5

    iget-object v0, p0, Lmiuix/appcompat/app/DatePickerDialog;->mCallBack:Lmiuix/appcompat/app/DatePickerDialog$OnDateSetListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/app/DatePickerDialog;->mDatePicker:Lmiuix/pickerwidget/widget/DatePicker;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    iget-object v0, p0, Lmiuix/appcompat/app/DatePickerDialog;->mCallBack:Lmiuix/appcompat/app/DatePickerDialog$OnDateSetListener;

    iget-object v1, p0, Lmiuix/appcompat/app/DatePickerDialog;->mDatePicker:Lmiuix/pickerwidget/widget/DatePicker;

    invoke-virtual {v1}, Lmiuix/pickerwidget/widget/DatePicker;->getYear()I

    move-result v2

    iget-object v3, p0, Lmiuix/appcompat/app/DatePickerDialog;->mDatePicker:Lmiuix/pickerwidget/widget/DatePicker;

    invoke-virtual {v3}, Lmiuix/pickerwidget/widget/DatePicker;->getMonth()I

    move-result v3

    iget-object v4, p0, Lmiuix/appcompat/app/DatePickerDialog;->mDatePicker:Lmiuix/pickerwidget/widget/DatePicker;

    invoke-virtual {v4}, Lmiuix/pickerwidget/widget/DatePicker;->getDayOfMonth()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lmiuix/appcompat/app/DatePickerDialog$OnDateSetListener;->onDateSet(Lmiuix/pickerwidget/widget/DatePicker;III)V

    :cond_0
    return-void
.end method

.method private updateTitle(III)V
    .locals 2

    iget-object v0, p0, Lmiuix/appcompat/app/DatePickerDialog;->mCalendar:Lwl/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lwl/a;->S(II)Lwl/a;

    iget-object p1, p0, Lmiuix/appcompat/app/DatePickerDialog;->mCalendar:Lwl/a;

    const/4 v0, 0x5

    invoke-virtual {p1, v0, p2}, Lwl/a;->S(II)Lwl/a;

    iget-object p1, p0, Lmiuix/appcompat/app/DatePickerDialog;->mCalendar:Lwl/a;

    const/16 p2, 0x9

    invoke-virtual {p1, p2, p3}, Lwl/a;->S(II)Lwl/a;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lmiuix/appcompat/app/DatePickerDialog;->mCalendar:Lwl/a;

    invoke-virtual {p2}, Lwl/a;->G()J

    move-result-wide p2

    const/16 v0, 0x3780

    invoke-static {p1, p2, p3, v0}, Lwl/c;->a(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getDatePicker()Lmiuix/pickerwidget/widget/DatePicker;
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/app/DatePickerDialog;->mDatePicker:Lmiuix/pickerwidget/widget/DatePicker;

    return-object v0
.end method

.method public setLunarMode(Z)V
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/app/DatePickerDialog;->mLunarModePanel:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setTitle(I)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/app/e;->setTitle(I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lmiuix/appcompat/app/DatePickerDialog;->mTitleNeedsUpdate:Z

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lmiuix/appcompat/app/DatePickerDialog;->mTitleNeedsUpdate:Z

    return-void
.end method

.method public switchLunarState(Z)V
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/app/DatePickerDialog;->mLunarModeState:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {v0, p1}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    iget-object v0, p0, Lmiuix/appcompat/app/DatePickerDialog;->mDatePicker:Lmiuix/pickerwidget/widget/DatePicker;

    invoke-virtual {v0, p1}, Lmiuix/pickerwidget/widget/DatePicker;->setLunarMode(Z)V

    return-void
.end method

.method public updateDate(III)V
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/app/DatePickerDialog;->mDatePicker:Lmiuix/pickerwidget/widget/DatePicker;

    invoke-virtual {v0, p1, p2, p3}, Lmiuix/pickerwidget/widget/DatePicker;->v(III)V

    return-void
.end method
