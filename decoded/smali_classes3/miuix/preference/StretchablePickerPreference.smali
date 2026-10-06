.class public Lmiuix/preference/StretchablePickerPreference;
.super Lmiuix/preference/StretchableWidgetPreference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/preference/StretchablePickerPreference$c;
    }
.end annotation


# instance fields
.field private l:Lwl/a;

.field private m:Lmiuix/pickerwidget/widget/DateTimePicker$c;

.field private n:Landroid/content/Context;

.field private o:Z

.field private p:Z

.field private q:Ljava/lang/CharSequence;

.field private r:I

.field private s:J

.field private t:Lmiuix/preference/StretchablePickerPreference$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lmiuix/preference/k;->C:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/preference/StretchablePickerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lmiuix/preference/StretchableWidgetPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lwl/a;

    invoke-direct {v0}, Lwl/a;-><init>()V

    iput-object v0, p0, Lmiuix/preference/StretchablePickerPreference;->l:Lwl/a;

    invoke-virtual {v0}, Lwl/a;->G()J

    move-result-wide v0

    iput-wide v0, p0, Lmiuix/preference/StretchablePickerPreference;->s:J

    iput-object p1, p0, Lmiuix/preference/StretchablePickerPreference;->n:Landroid/content/Context;

    new-instance v0, Lmiuix/pickerwidget/widget/DateTimePicker$c;

    invoke-direct {v0, p1}, Lmiuix/pickerwidget/widget/DateTimePicker$c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiuix/preference/StretchablePickerPreference;->m:Lmiuix/pickerwidget/widget/DateTimePicker$c;

    sget-object v0, Lmiuix/preference/r;->g2:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lmiuix/preference/r;->h2:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lmiuix/preference/StretchablePickerPreference;->o:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private B(J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmiuix/preference/StretchablePickerPreference;->v(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/preference/StretchableWidgetPreference;->f(Ljava/lang/String;)V

    return-void
.end method

.method private C(ZJ)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2, p3}, Lmiuix/preference/StretchablePickerPreference;->A(J)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2, p3}, Lmiuix/preference/StretchablePickerPreference;->B(J)V

    :goto_0
    return-void
.end method

.method private D(Lmiuix/pickerwidget/widget/DateTimePicker;)V
    .locals 1

    new-instance v0, Lmiuix/preference/StretchablePickerPreference$a;

    invoke-direct {v0, p0}, Lmiuix/preference/StretchablePickerPreference$a;-><init>(Lmiuix/preference/StretchablePickerPreference;)V

    invoke-virtual {p1, v0}, Lmiuix/pickerwidget/widget/DateTimePicker;->setOnTimeChangedListener(Lmiuix/pickerwidget/widget/DateTimePicker$d;)V

    return-void
.end method

.method public static synthetic i(Lmiuix/preference/StretchablePickerPreference;Lmiuix/slidingwidget/widget/SlidingButton;Lmiuix/pickerwidget/widget/DateTimePicker;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lmiuix/preference/StretchablePickerPreference;->y(Lmiuix/slidingwidget/widget/SlidingButton;Lmiuix/pickerwidget/widget/DateTimePicker;Landroid/view/View;)V

    return-void
.end method

.method static synthetic j(Lmiuix/preference/StretchablePickerPreference;)Lwl/a;
    .locals 0

    iget-object p0, p0, Lmiuix/preference/StretchablePickerPreference;->l:Lwl/a;

    return-object p0
.end method

.method static synthetic k(Lmiuix/preference/StretchablePickerPreference;)Z
    .locals 0

    iget-boolean p0, p0, Lmiuix/preference/StretchablePickerPreference;->p:Z

    return p0
.end method

.method static synthetic l(Lmiuix/preference/StretchablePickerPreference;ZJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lmiuix/preference/StretchablePickerPreference;->C(ZJ)V

    return-void
.end method

.method static synthetic m(Lmiuix/preference/StretchablePickerPreference;)J
    .locals 2

    iget-wide v0, p0, Lmiuix/preference/StretchablePickerPreference;->s:J

    return-wide v0
.end method

.method static synthetic n(Lmiuix/preference/StretchablePickerPreference;J)J
    .locals 0

    iput-wide p1, p0, Lmiuix/preference/StretchablePickerPreference;->s:J

    return-wide p1
.end method

.method static synthetic o(Lmiuix/preference/StretchablePickerPreference;)Lmiuix/preference/StretchablePickerPreference$c;
    .locals 0

    iget-object p0, p0, Lmiuix/preference/StretchablePickerPreference;->t:Lmiuix/preference/StretchablePickerPreference$c;

    return-object p0
.end method

.method static synthetic q(Lmiuix/preference/StretchablePickerPreference;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method static synthetic r(Lmiuix/preference/StretchablePickerPreference;Lmiuix/pickerwidget/widget/DateTimePicker;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmiuix/preference/StretchablePickerPreference;->z(Lmiuix/pickerwidget/widget/DateTimePicker;Z)V

    return-void
.end method

.method private s(Lmiuix/slidingwidget/widget/SlidingButton;Lmiuix/pickerwidget/widget/DateTimePicker;)V
    .locals 1

    new-instance v0, Lmiuix/preference/StretchablePickerPreference$b;

    invoke-direct {v0, p0, p2}, Lmiuix/preference/StretchablePickerPreference$b;-><init>(Lmiuix/preference/StretchablePickerPreference;Lmiuix/pickerwidget/widget/DateTimePicker;)V

    invoke-virtual {p1, v0}, Lmiuix/slidingwidget/widget/SlidingButton;->setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method private u(JLandroid/content/Context;)Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lmiuix/preference/StretchablePickerPreference;->m:Lmiuix/pickerwidget/widget/DateTimePicker$c;

    iget-object v1, p0, Lmiuix/preference/StretchablePickerPreference;->l:Lwl/a;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lwl/a;->B(I)I

    move-result v1

    iget-object v2, p0, Lmiuix/preference/StretchablePickerPreference;->l:Lwl/a;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lwl/a;->B(I)I

    move-result v2

    iget-object v3, p0, Lmiuix/preference/StretchablePickerPreference;->l:Lwl/a;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Lwl/a;->B(I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lmiuix/pickerwidget/widget/DateTimePicker$c;->a(III)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc

    invoke-static {p3, p1, p2, v1}, Lwl/c;->a(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private v(J)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lmiuix/preference/StretchablePickerPreference;->n:Landroid/content/Context;

    const/16 v1, 0x38c

    invoke-static {v0, p1, p2, v1}, Lwl/c;->a(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private w()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lmiuix/preference/StretchablePickerPreference;->q:Ljava/lang/CharSequence;

    return-object v0
.end method

.method private x()I
    .locals 1

    iget v0, p0, Lmiuix/preference/StretchablePickerPreference;->r:I

    return v0
.end method

.method private synthetic y(Lmiuix/slidingwidget/widget/SlidingButton;Lmiuix/pickerwidget/widget/DateTimePicker;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    invoke-virtual {p1, p3}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    invoke-direct {p0, p2, p3}, Lmiuix/preference/StretchablePickerPreference;->z(Lmiuix/pickerwidget/widget/DateTimePicker;Z)V

    return-void
.end method

.method private z(Lmiuix/pickerwidget/widget/DateTimePicker;Z)V
    .locals 2

    invoke-virtual {p1, p2}, Lmiuix/pickerwidget/widget/DateTimePicker;->setLunarMode(Z)V

    invoke-virtual {p1}, Lmiuix/pickerwidget/widget/DateTimePicker;->getTimeInMillis()J

    move-result-wide v0

    invoke-direct {p0, p2, v0, v1}, Lmiuix/preference/StretchablePickerPreference;->C(ZJ)V

    iput-boolean p2, p0, Lmiuix/preference/StretchablePickerPreference;->p:Z

    return-void
.end method


# virtual methods
.method public A(J)V
    .locals 1

    iget-object v0, p0, Lmiuix/preference/StretchablePickerPreference;->n:Landroid/content/Context;

    invoke-direct {p0, p1, p2, v0}, Lmiuix/preference/StretchablePickerPreference;->u(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/preference/StretchableWidgetPreference;->f(Ljava/lang/String;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/h;)V
    .locals 6

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    sget v1, Lmiuix/preference/o;->i:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    sget v2, Lmiuix/preference/o;->f:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lmiuix/pickerwidget/widget/DateTimePicker;

    sget v3, Lmiuix/preference/o;->h:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lmiuix/slidingwidget/widget/SlidingButton;

    sget v4, Lmiuix/preference/o;->j:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-boolean v4, p0, Lmiuix/preference/StretchablePickerPreference;->o:Z

    if-nez v4, :cond_0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_0
    if-eqz v0, :cond_3

    invoke-direct {p0}, Lmiuix/preference/StretchablePickerPreference;->w()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setFocusable(Z)V

    xor-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setFocusable(Z)V

    if-eqz v0, :cond_2

    new-instance v0, Lmiuix/preference/s;

    invoke-direct {v0, p0, v3, v2}, Lmiuix/preference/s;-><init>(Lmiuix/preference/StretchablePickerPreference;Lmiuix/slidingwidget/widget/SlidingButton;Lmiuix/pickerwidget/widget/DateTimePicker;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    :goto_2
    invoke-direct {p0}, Lmiuix/preference/StretchablePickerPreference;->x()I

    move-result v0

    invoke-virtual {v2, v0}, Lmiuix/pickerwidget/widget/DateTimePicker;->setMinuteInterval(I)V

    invoke-virtual {v2}, Lmiuix/pickerwidget/widget/DateTimePicker;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmiuix/preference/StretchablePickerPreference;->s:J

    invoke-super {p0, p1}, Lmiuix/preference/StretchableWidgetPreference;->onBindViewHolder(Landroidx/preference/h;)V

    invoke-direct {p0, v3, v2}, Lmiuix/preference/StretchablePickerPreference;->s(Lmiuix/slidingwidget/widget/SlidingButton;Lmiuix/pickerwidget/widget/DateTimePicker;)V

    iget-boolean p1, p0, Lmiuix/preference/StretchablePickerPreference;->p:Z

    invoke-virtual {v2}, Lmiuix/pickerwidget/widget/DateTimePicker;->getTimeInMillis()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lmiuix/preference/StretchablePickerPreference;->C(ZJ)V

    invoke-direct {p0, v2}, Lmiuix/preference/StretchablePickerPreference;->D(Lmiuix/pickerwidget/widget/DateTimePicker;)V

    return-void
.end method
