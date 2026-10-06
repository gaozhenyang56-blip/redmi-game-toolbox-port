.class public Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"

# interfaces
.implements Lcom/miui/gamebooster/ui/touch/GbSwitchSelector$a;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsDiyView$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2$TouchMode;,
        Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2$b;
    }
.end annotation


# instance fields
.field private a:Lcom/miui/gamebooster/ui/touch/GbSwitchSelector;

.field private b:Landroid/view/ViewGroup;

.field private c:Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsDiyView;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Lmiuix/appcompat/widget/Spinner;

.field private g:Lmiuix/androidbasewidget/widget/SeekBar;

.field private h:Lmiuix/androidbasewidget/widget/SeekBar;

.field private i:Lmiuix/androidbasewidget/widget/SeekBar;

.field private j:Lmiuix/androidbasewidget/widget/SeekBar;

.field private k:Landroid/view/View;

.field private l:Landroid/view/View;

.field private m:Landroid/view/View;

.field private n:Landroid/view/View;

.field private o:Landroid/view/View;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2$b;

.field private s:Z

.field private t:I

.field private u:Lcom/miui/gamebooster/ui/touch/a$a;

.field private v:Lcom/miui/gamebooster/ui/touch/a$a;

.field private w:Lcom/miui/gamebooster/ui/touch/a$a;

.field private x:Lcom/miui/gamebooster/ui/touch/a$a;

.field private y:Lz7/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->t:I

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p2

    const p3, 0x7f0b04aa

    if-ne p2, p3, :cond_0

    const/4 p1, 0x1

    :cond_0
    iput-boolean p1, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->s:Z

    return-void
.end method

.method static synthetic f(Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->g()V

    return-void
.end method

.method private g()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->f:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->t:I

    iget-object v1, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->r:Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2$b;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2$b;->onModeChanged(I)V

    :cond_0
    return-void
.end method

.method private h(Landroid/content/Context;)V
    .locals 4

    const v0, 0x7f0b0aec

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/ui/touch/GbSwitchSelector;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->a:Lcom/miui/gamebooster/ui/touch/GbSwitchSelector;

    invoke-virtual {v0, p0}, Lcom/miui/gamebooster/ui/touch/GbSwitchSelector;->setListener(Lcom/miui/gamebooster/ui/touch/GbSwitchSelector$a;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->a:Lcom/miui/gamebooster/ui/touch/GbSwitchSelector;

    iget v1, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->t:I

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/ui/touch/GbSwitchSelector;->setOption(I)V

    const v0, 0x7f0b0400

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->b:Landroid/view/ViewGroup;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->b:Landroid/view/ViewGroup;

    const v1, 0x7f0e01f5

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->d:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->b:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->e:Landroid/view/View;

    const v1, 0x7f0b0601

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0806d3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->e:Landroid/view/View;

    const v1, 0x7f0b0c24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->e:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->b:Landroid/view/ViewGroup;

    const v1, 0x7f0e01fb

    invoke-virtual {p1, v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsDiyView;

    iput-object p1, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->c:Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsDiyView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->b:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->d:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->b:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->c:Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsDiyView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->b:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->e:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->c:Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsDiyView;

    invoke-virtual {p1, p0}, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsDiyView;->setITouchChanged(Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsDiyView$a;)V

    return-void
.end method

.method private i()V
    .locals 5

    const v0, 0x7f0b09e2

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/androidbasewidget/widget/SeekBar;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->g:Lmiuix/androidbasewidget/widget/SeekBar;

    const v0, 0x7f0b09e3

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/androidbasewidget/widget/SeekBar;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->h:Lmiuix/androidbasewidget/widget/SeekBar;

    const v0, 0x7f0b09e4

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/androidbasewidget/widget/SeekBar;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->i:Lmiuix/androidbasewidget/widget/SeekBar;

    const v0, 0x7f0b09e5

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/androidbasewidget/widget/SeekBar;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->j:Lmiuix/androidbasewidget/widget/SeekBar;

    iget-object v0, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->g:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-virtual {v0, p0}, Lmiuix/androidbasewidget/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->h:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-virtual {v0, p0}, Lmiuix/androidbasewidget/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->i:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-virtual {v0, p0}, Lmiuix/androidbasewidget/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->j:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-virtual {v0, p0}, Lmiuix/androidbasewidget/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const v0, 0x7f0b0709

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->k:Landroid/view/View;

    const v0, 0x7f0b070a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->l:Landroid/view/View;

    const v0, 0x7f0b070b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->m:Landroid/view/View;

    const v0, 0x7f0b070c

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->n:Landroid/view/View;

    const v0, 0x7f0b0cfa

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->p:Landroid/widget/TextView;

    const v0, 0x7f0b0cfb

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->q:Landroid/widget/TextView;

    invoke-static {}, La8/b;->u()Z

    move-result v0

    iget-object v1, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->p:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const v2, 0x7f1209cd

    goto :goto_0

    :cond_0
    const v2, 0x7f1209e0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->q:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const v0, 0x7f1209ce

    goto :goto_1

    :cond_1
    const v0, 0x7f1209df

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0b0ad5

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/widget/Spinner;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->f:Lmiuix/appcompat/widget/Spinner;

    const v0, 0x7f0b0244

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->o:Landroid/view/View;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const v3, 0x7f1209cc

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const v3, 0x7f1209d8

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const v3, 0x7f1209d5

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e0338

    const v4, 0x1020014

    invoke-direct {v0, v2, v3, v4, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    const v1, 0x7f0e0335

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v1, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->f:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v1, v0}, Lmiuix/appcompat/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->f:Lmiuix/appcompat/widget/Spinner;

    new-instance v1, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2$a;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2$a;-><init>(Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method private j(Landroid/widget/SeekBar;I)V
    .locals 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    :try_start_0
    const-class v0, Landroid/widget/AbsSeekBar;

    const-string v1, "setMin"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v5

    invoke-static {v0, p1, v1, v3, v2}, Lbh/f;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GbAdvTouchSettingsViewV"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private k(Lcom/miui/gamebooster/ui/touch/a$a;Landroid/widget/SeekBar;)V
    .locals 2

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p1, Lcom/miui/gamebooster/ui/touch/a$a;->b:I

    iget v1, p1, Lcom/miui/gamebooster/ui/touch/a$a;->a:I

    if-ge v0, v1, :cond_1

    invoke-direct {p0, p2, v0}, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->j(Landroid/widget/SeekBar;I)V

    :cond_1
    iget v0, p1, Lcom/miui/gamebooster/ui/touch/a$a;->a:I

    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    invoke-virtual {p1}, Lcom/miui/gamebooster/ui/touch/a$a;->a()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private m()V
    .locals 4

    iget v0, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->t:I

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->d:Landroid/view/View;

    invoke-static {v0, v2}, Ldb/i;->l(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->e:Landroid/view/View;

    invoke-static {v0, v2}, Ldb/i;->l(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->c:Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsDiyView;

    invoke-static {v0, v1}, Ldb/i;->l(Landroid/view/View;I)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->d:Landroid/view/View;

    invoke-static {v0, v2}, Ldb/i;->l(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->e:Landroid/view/View;

    invoke-static {v0, v1}, Ldb/i;->l(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->c:Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsDiyView;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->d:Landroid/view/View;

    invoke-static {v0, v1}, Ldb/i;->l(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->c:Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsDiyView;

    invoke-static {v0, v2}, Ldb/i;->l(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->e:Landroid/view/View;

    :goto_0
    invoke-static {v0, v2}, Ldb/i;->l(Landroid/view/View;I)V

    :goto_1
    return-void
.end method

.method private n()V
    .locals 3

    iget v0, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->t:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    iget-object v0, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->l:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->m:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->n:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->u:Lcom/miui/gamebooster/ui/touch/a$a;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->g:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-direct {p0, v0, v1}, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->k(Lcom/miui/gamebooster/ui/touch/a$a;Landroid/widget/SeekBar;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->v:Lcom/miui/gamebooster/ui/touch/a$a;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->h:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-direct {p0, v0, v1}, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->k(Lcom/miui/gamebooster/ui/touch/a$a;Landroid/widget/SeekBar;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->w:Lcom/miui/gamebooster/ui/touch/a$a;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->i:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-direct {p0, v0, v1}, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->k(Lcom/miui/gamebooster/ui/touch/a$a;Landroid/widget/SeekBar;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->x:Lcom/miui/gamebooster/ui/touch/a$a;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->j:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-direct {p0, v0, v1}, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->k(Lcom/miui/gamebooster/ui/touch/a$a;Landroid/widget/SeekBar;)V

    return-void
.end method


# virtual methods
.method public b(Lcom/miui/gamebooster/ui/touch/GbSwitchSelector;I)V
    .locals 0

    iput p2, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->t:I

    iget-object p1, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->r:Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2$b;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2$b;->onModeChanged(I)V

    :cond_0
    return-void
.end method

.method public d(ILz7/e;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->y:Lz7/d;

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lz7/e;->a()I

    move-result p2

    invoke-interface {v0, p2, p1}, Lz7/d;->a(II)V

    :cond_1
    return-void
.end method

.method public getDiyView()Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsDiyView;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->c:Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsDiyView;

    return-object v0
.end method

.method public l(ILcom/miui/gamebooster/ui/touch/a$a;Lcom/miui/gamebooster/ui/touch/a$a;Lcom/miui/gamebooster/ui/touch/a$a;Lcom/miui/gamebooster/ui/touch/a$a;)V
    .locals 1

    iput p1, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->t:I

    iput-object p2, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->u:Lcom/miui/gamebooster/ui/touch/a$a;

    iput-object p3, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->v:Lcom/miui/gamebooster/ui/touch/a$a;

    iput-object p4, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->w:Lcom/miui/gamebooster/ui/touch/a$a;

    iput-object p5, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->x:Lcom/miui/gamebooster/ui/touch/a$a;

    iget-boolean v0, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->s:Z

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->c:Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsDiyView;

    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsDiyView;->a(Lcom/miui/gamebooster/ui/touch/a$a;Lcom/miui/gamebooster/ui/touch/a$a;Lcom/miui/gamebooster/ui/touch/a$a;Lcom/miui/gamebooster/ui/touch/a$a;)V

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->m()V

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object p2, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->f:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {p2, p1}, Lmiuix/appcompat/widget/Spinner;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-direct {p0}, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->n()V

    :goto_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    iget-boolean v0, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->s:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->h(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->m()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->i()V

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->n()V

    :goto_0
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->g:Lmiuix/androidbasewidget/widget/SeekBar;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->h:Lmiuix/androidbasewidget/widget/SeekBar;

    if-ne p1, v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->i:Lmiuix/androidbasewidget/widget/SeekBar;

    if-ne p1, v0, :cond_2

    const/4 v0, 0x4

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->j:Lmiuix/androidbasewidget/widget/SeekBar;

    if-ne p1, v0, :cond_3

    const/4 v0, 0x5

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    :goto_0
    iget-object v1, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->y:Lz7/d;

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    invoke-interface {v1, v0, p1}, Lz7/d;->a(II)V

    :cond_4
    return-void
.end method

.method public setIModeChangeListener(Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2$b;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->r:Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2$b;

    return-void
.end method

.method public setITouchValueChangedCallback(Lz7/d;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->y:Lz7/d;

    return-void
.end method

.method public setTouchMode(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->a:Lcom/miui/gamebooster/ui/touch/GbSwitchSelector;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/miui/gamebooster/ui/touch/GbSwitchSelector;->setOption(I)V

    :cond_0
    return-void
.end method
