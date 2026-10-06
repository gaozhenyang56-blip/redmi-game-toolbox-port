.class public Lcom/miui/gamebooster/voicechanger/SettingsView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/voicechanger/SettingsView$c;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Lcom/miui/gamebooster/widget/SwitchButton;

.field private d:Landroid/widget/TextView;

.field private e:Lmiuix/appcompat/widget/Spinner;

.field private f:Lcom/miui/gamebooster/voicechanger/SettingsView$c;

.field private g:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f13041e

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gamebooster/voicechanger/SettingsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/voicechanger/SettingsView;->p(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic f(Lcom/miui/gamebooster/voicechanger/SettingsView;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/voicechanger/SettingsView;->s(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic g(Lcom/miui/gamebooster/voicechanger/SettingsView;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/voicechanger/SettingsView;->t(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic h(ZLjava/util/Map;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/gamebooster/voicechanger/SettingsView;->r(ZLjava/util/Map;)V

    return-void
.end method

.method public static synthetic i(Lcom/miui/gamebooster/voicechanger/SettingsView;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/voicechanger/SettingsView;->q(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic j(Lcom/miui/gamebooster/voicechanger/SettingsView;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/voicechanger/SettingsView;->o(I)I

    move-result p0

    return p0
.end method

.method static synthetic k(Lcom/miui/gamebooster/voicechanger/SettingsView;)Lcom/miui/gamebooster/voicechanger/SettingsView$c;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/voicechanger/SettingsView;->f:Lcom/miui/gamebooster/voicechanger/SettingsView$c;

    return-object p0
.end method

.method static synthetic l(Lcom/miui/gamebooster/voicechanger/SettingsView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/voicechanger/SettingsView;->g:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic m(Lcom/miui/gamebooster/voicechanger/SettingsView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/voicechanger/SettingsView;->u(Z)V

    return-void
.end method

.method static synthetic n(Lcom/miui/gamebooster/voicechanger/SettingsView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/voicechanger/SettingsView;->v()V

    return-void
.end method

.method private o(I)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    return p1
.end method

.method private p(Landroid/content/Context;)V
    .locals 4

    iput-object p1, p0, Lcom/miui/gamebooster/voicechanger/SettingsView;->g:Landroid/content/Context;

    const v0, 0x7f0e0217

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f060df0

    invoke-static {p0, v0}, Lx4/k;->h(Landroid/view/ViewGroup;I)V

    const v0, 0x7f0b01a4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0d07

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/voicechanger/SettingsView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0c1e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/voicechanger/SettingsView;->b:Landroid/widget/TextView;

    const v0, 0x7f0b0dac

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/widget/SwitchButton;

    iput-object v0, p0, Lcom/miui/gamebooster/voicechanger/SettingsView;->c:Lcom/miui/gamebooster/widget/SwitchButton;

    const v0, 0x7f0b0cc6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/voicechanger/SettingsView;->d:Landroid/widget/TextView;

    const v0, 0x7f0b0ad2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/widget/Spinner;

    iput-object p1, p0, Lcom/miui/gamebooster/voicechanger/SettingsView;->e:Lmiuix/appcompat/widget/Spinner;

    new-instance p1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f03002f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0e0213

    const v3, 0x1020014

    invoke-direct {p1, v0, v2, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    const v0, 0x7f0e0212

    invoke-virtual {p1, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/voicechanger/SettingsView;->e:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object p1, p0, Lcom/miui/gamebooster/voicechanger/SettingsView;->d:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/miui/gamebooster/voicechanger/SettingsView;->e:Lmiuix/appcompat/widget/Spinner;

    new-instance v0, Lcom/miui/gamebooster/voicechanger/SettingsView$a;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/voicechanger/SettingsView$a;-><init>(Lcom/miui/gamebooster/voicechanger/SettingsView;)V

    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object p1, p0, Lcom/miui/gamebooster/voicechanger/SettingsView;->c:Lcom/miui/gamebooster/widget/SwitchButton;

    new-instance v0, Lcom/miui/gamebooster/voicechanger/SettingsView$b;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/voicechanger/SettingsView$b;-><init>(Lcom/miui/gamebooster/voicechanger/SettingsView;)V

    invoke-virtual {p1, v0}, Lcom/miui/gamebooster/widget/SwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/miui/gamebooster/voicechanger/SettingsView;->w()V

    return-void
.end method

.method private synthetic q(Ljava/util/Map;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/gamebooster/voicechanger/SettingsView;->c:Lcom/miui/gamebooster/widget/SwitchButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/gamebooster/widget/SwitchButton;->setChecked(Z)V

    return-void
.end method

.method private static synthetic r(ZLjava/util/Map;)V
    .locals 0

    invoke-static {p0}, Lr8/b;->m(Z)V

    return-void
.end method

.method private synthetic s(Ljava/util/Map;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/gamebooster/voicechanger/SettingsView;->c:Lcom/miui/gamebooster/widget/SwitchButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/gamebooster/widget/SwitchButton;->setChecked(Z)V

    return-void
.end method

.method private synthetic t(Ljava/util/Map;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/gamebooster/voicechanger/SettingsView;->c:Lcom/miui/gamebooster/widget/SwitchButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/gamebooster/widget/SwitchButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/miui/gamebooster/voicechanger/SettingsView;->f:Lcom/miui/gamebooster/voicechanger/SettingsView$c;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/miui/gamebooster/voicechanger/SettingsView$c;->d()V

    :cond_0
    return-void
.end method

.method private u(Z)V
    .locals 7

    invoke-static {}, Lcom/miui/gamebooster/customview/s;->h()Lcom/miui/gamebooster/customview/s;

    move-result-object v0

    new-instance v5, Lo8/b;

    invoke-direct {v5, p0}, Lo8/b;-><init>(Lcom/miui/gamebooster/voicechanger/SettingsView;)V

    new-instance v6, Lo8/c;

    invoke-direct {v6, p1}, Lo8/c;-><init>(Z)V

    const v2, 0x7f120afc

    const v3, 0x7f120eca

    const v4, 0x7f120561

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/miui/gamebooster/customview/s;->m(Landroid/view/ViewGroup;IIILcom/miui/gamebooster/customview/s$b;Lcom/miui/gamebooster/customview/s$b;)V

    return-void
.end method

.method private v()V
    .locals 7

    invoke-static {}, Lcom/miui/gamebooster/customview/s;->h()Lcom/miui/gamebooster/customview/s;

    move-result-object v0

    new-instance v5, Lo8/d;

    invoke-direct {v5, p0}, Lo8/d;-><init>(Lcom/miui/gamebooster/voicechanger/SettingsView;)V

    new-instance v6, Lo8/e;

    invoke-direct {v6, p0}, Lo8/e;-><init>(Lcom/miui/gamebooster/voicechanger/SettingsView;)V

    const v2, 0x7f120af5

    const v3, 0x7f120499

    const v4, 0x7f120568

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/miui/gamebooster/customview/s;->m(Landroid/view/ViewGroup;IIILcom/miui/gamebooster/customview/s$b;Lcom/miui/gamebooster/customview/s$b;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0b01a4

    if-eq p1, v0, :cond_2

    const v0, 0x7f0b0cc6

    if-eq p1, v0, :cond_1

    const v0, 0x7f0b0d07

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/gamebooster/voicechanger/SettingsView;->f:Lcom/miui/gamebooster/voicechanger/SettingsView$c;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/miui/gamebooster/voicechanger/SettingsView$c;->d()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/gamebooster/voicechanger/SettingsView;->f:Lcom/miui/gamebooster/voicechanger/SettingsView$c;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/miui/gamebooster/voicechanger/SettingsView$c;->b()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/miui/gamebooster/voicechanger/SettingsView;->f:Lcom/miui/gamebooster/voicechanger/SettingsView$c;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/miui/gamebooster/voicechanger/SettingsView$c;->a()V

    :cond_3
    :goto_0
    return-void
.end method

.method public setMainContent(Lcom/miui/gamebooster/voicechanger/SettingsView$c;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/voicechanger/SettingsView;->f:Lcom/miui/gamebooster/voicechanger/SettingsView$c;

    return-void
.end method

.method public w()V
    .locals 4

    invoke-static {}, Lo8/k;->C()Lo8/k;

    move-result-object v0

    invoke-virtual {v0}, Lo8/k;->K()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/voicechanger/SettingsView;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/gamebooster/voicechanger/SettingsView;->g:Landroid/content/Context;

    invoke-static {v1}, Lp4/d;->f(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-static {}, Lo8/k;->C()Lo8/k;

    move-result-object v1

    invoke-virtual {v1}, Lo8/k;->L()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    :goto_0
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/voicechanger/SettingsView;->b:Landroid/widget/TextView;

    invoke-static {}, Lo8/k;->C()Lo8/k;

    move-result-object v1

    invoke-virtual {v1}, Lo8/k;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/gamebooster/voicechanger/SettingsView;->e:Lmiuix/appcompat/widget/Spinner;

    invoke-static {}, Lr8/b;->a()I

    move-result v1

    const/4 v3, 0x1

    if-ne v3, v1, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    invoke-virtual {v0, v2}, Lmiuix/appcompat/widget/Spinner;->setSelection(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/voicechanger/SettingsView;->c:Lcom/miui/gamebooster/widget/SwitchButton;

    invoke-static {}, Lr8/b;->e()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/widget/SwitchButton;->setChecked(Z)V

    return-void
.end method
