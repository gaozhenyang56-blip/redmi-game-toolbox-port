.class public Lcom/miui/powercenter/bootshutdown/RepeatPreference;
.super Lmiuix/preference/TextPreference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/powercenter/bootshutdown/RepeatPreference$c;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/miui/powercenter/bootshutdown/DaysOfWeek;

.field private c:Z

.field private d:Lcom/miui/powercenter/bootshutdown/a;

.field private e:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lmiuix/preference/TextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Lcom/miui/powercenter/bootshutdown/DaysOfWeek;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/miui/powercenter/bootshutdown/DaysOfWeek;-><init>(I)V

    iput-object p2, p0, Lcom/miui/powercenter/bootshutdown/RepeatPreference;->b:Lcom/miui/powercenter/bootshutdown/DaysOfWeek;

    iput-boolean v0, p0, Lcom/miui/powercenter/bootshutdown/RepeatPreference;->c:Z

    iput-object p1, p0, Lcom/miui/powercenter/bootshutdown/RepeatPreference;->a:Landroid/content/Context;

    new-instance p1, Lcom/miui/powercenter/bootshutdown/a;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/miui/powercenter/bootshutdown/a;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/powercenter/bootshutdown/RepeatPreference;->d:Lcom/miui/powercenter/bootshutdown/a;

    return-void
.end method

.method static synthetic d(Lcom/miui/powercenter/bootshutdown/RepeatPreference;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/powercenter/bootshutdown/RepeatPreference;->c:Z

    return p0
.end method

.method static synthetic e(Lcom/miui/powercenter/bootshutdown/RepeatPreference;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/bootshutdown/RepeatPreference;->e:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic f(Lcom/miui/powercenter/bootshutdown/RepeatPreference;)Lcom/miui/powercenter/bootshutdown/a;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/bootshutdown/RepeatPreference;->d:Lcom/miui/powercenter/bootshutdown/a;

    return-object p0
.end method

.method static synthetic g(Lcom/miui/powercenter/bootshutdown/RepeatPreference;)Lcom/miui/powercenter/bootshutdown/DaysOfWeek;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/bootshutdown/RepeatPreference;->b:Lcom/miui/powercenter/bootshutdown/DaysOfWeek;

    return-object p0
.end method

.method static synthetic h(Lcom/miui/powercenter/bootshutdown/RepeatPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/bootshutdown/RepeatPreference;->n()V

    return-void
.end method

.method static synthetic i(Lcom/miui/powercenter/bootshutdown/RepeatPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/bootshutdown/RepeatPreference;->m()V

    return-void
.end method

.method private m()V
    .locals 9

    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-direct {v0}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v4, v0, v3

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const/4 v4, 0x3

    aget-object v6, v0, v4

    const/4 v7, 0x1

    aput-object v6, v2, v7

    const/4 v6, 0x4

    aget-object v8, v0, v6

    aput-object v8, v2, v3

    const/4 v3, 0x5

    aget-object v8, v0, v3

    aput-object v8, v2, v4

    const/4 v4, 0x6

    aget-object v8, v0, v4

    aput-object v8, v2, v6

    aget-object v1, v0, v1

    aput-object v1, v2, v3

    aget-object v0, v0, v7

    aput-object v0, v2, v4

    new-instance v0, Lcom/miui/powercenter/bootshutdown/DaysOfWeek;

    invoke-direct {v0, v5}, Lcom/miui/powercenter/bootshutdown/DaysOfWeek;-><init>(I)V

    iget-object v1, p0, Lcom/miui/powercenter/bootshutdown/RepeatPreference;->b:Lcom/miui/powercenter/bootshutdown/DaysOfWeek;

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/bootshutdown/DaysOfWeek;->i(Lcom/miui/powercenter/bootshutdown/DaysOfWeek;)V

    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/miui/powercenter/bootshutdown/RepeatPreference;->b:Lcom/miui/powercenter/bootshutdown/DaysOfWeek;

    invoke-virtual {v3}, Lcom/miui/powercenter/bootshutdown/DaysOfWeek;->b()[Z

    move-result-object v3

    new-instance v4, Lcom/miui/powercenter/bootshutdown/RepeatPreference$a;

    invoke-direct {v4, p0, v0}, Lcom/miui/powercenter/bootshutdown/RepeatPreference$a;-><init>(Lcom/miui/powercenter/bootshutdown/RepeatPreference;Lcom/miui/powercenter/bootshutdown/DaysOfWeek;)V

    invoke-virtual {v1, v2, v3, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    new-instance v2, Lcom/miui/powercenter/bootshutdown/RepeatPreference$b;

    invoke-direct {v2, p0, v0}, Lcom/miui/powercenter/bootshutdown/RepeatPreference$b;-><init>(Lcom/miui/powercenter/bootshutdown/RepeatPreference;Lcom/miui/powercenter/bootshutdown/DaysOfWeek;)V

    const v0, 0x104000a

    invoke-virtual {v1, v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    const/high16 v0, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-boolean v0, p0, Lcom/miui/powercenter/bootshutdown/RepeatPreference;->c:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method private n()V
    .locals 3

    iget-object v0, p0, Lcom/miui/powercenter/bootshutdown/RepeatPreference;->b:Lcom/miui/powercenter/bootshutdown/DaysOfWeek;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/miui/powercenter/bootshutdown/DaysOfWeek;->k(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/powercenter/bootshutdown/RepeatPreference;->b:Lcom/miui/powercenter/bootshutdown/DaysOfWeek;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public j()I
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/bootshutdown/RepeatPreference;->b:Lcom/miui/powercenter/bootshutdown/DaysOfWeek;

    invoke-virtual {v0}, Lcom/miui/powercenter/bootshutdown/DaysOfWeek;->c()I

    move-result v0

    if-eqz v0, :cond_3

    const/16 v1, 0x1f

    if-eq v0, v1, :cond_2

    const/16 v1, 0x7f

    if-eq v0, v1, :cond_1

    const/16 v1, 0x80

    if-eq v0, v1, :cond_0

    const/4 v0, 0x4

    return v0

    :cond_0
    const/4 v0, 0x2

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x3

    return v0

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public k()Lcom/miui/powercenter/bootshutdown/DaysOfWeek;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/bootshutdown/RepeatPreference;->b:Lcom/miui/powercenter/bootshutdown/DaysOfWeek;

    return-object v0
.end method

.method public l(Lcom/miui/powercenter/bootshutdown/DaysOfWeek;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/bootshutdown/RepeatPreference;->b:Lcom/miui/powercenter/bootshutdown/DaysOfWeek;

    invoke-virtual {v0, p1}, Lcom/miui/powercenter/bootshutdown/DaysOfWeek;->i(Lcom/miui/powercenter/bootshutdown/DaysOfWeek;)V

    return-void
.end method

.method public onAttached()V
    .locals 1

    invoke-super {p0}, Landroidx/preference/Preference;->onAttached()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/powercenter/bootshutdown/RepeatPreference;->c:Z

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/h;)V
    .locals 1

    invoke-super {p0, p1}, Lmiuix/preference/TextPreference;->onBindViewHolder(Landroidx/preference/h;)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v0, 0x7f0b0b9b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/powercenter/bootshutdown/RepeatPreference;->e:Landroid/widget/TextView;

    return-void
.end method

.method protected onClick()V
    .locals 2

    new-instance v0, Lcom/miui/powercenter/bootshutdown/RepeatPreference$c;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/bootshutdown/RepeatPreference$c;-><init>(Lcom/miui/powercenter/bootshutdown/RepeatPreference;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onDetached()V
    .locals 1

    invoke-super {p0}, Landroidx/preference/Preference;->onDetached()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/powercenter/bootshutdown/RepeatPreference;->c:Z

    return-void
.end method
