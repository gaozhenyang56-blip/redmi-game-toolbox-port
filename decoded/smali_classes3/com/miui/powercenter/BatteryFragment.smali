.class public Lcom/miui/powercenter/BatteryFragment;
.super Lmiuix/appcompat/app/Fragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/powercenter/BatteryFragment$d;,
        Lcom/miui/powercenter/BatteryFragment$c;
    }
.end annotation


# static fields
.field public static final t:Ljava/lang/String;

.field private static u:I


# instance fields
.field private a:Landroid/view/ViewGroup;

.field private b:Landroid/view/ViewGroup;

.field private c:Landroid/view/ViewGroup;

.field private d:Landroid/view/ViewGroup;

.field private e:Landroid/view/ViewGroup;

.field private f:Landroid/widget/RelativeLayout;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextSwitcher;

.field private i:Loe/a;

.field private j:Landroid/view/ViewStub;

.field private k:Lcom/miui/powercenter/BatteryFragment$d;

.field private l:Lcom/miui/powercenter/view/BatteryTipView;

.field private m:Lcom/miui/powercenter/view/BatteryHealthNewView;

.field private n:Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryTipView;

.field private o:Z

.field private p:Landroid/content/res/Configuration;

.field private q:I

.field private r:Landroid/widget/LinearLayout;

.field private s:Landroid/widget/ViewSwitcher$ViewFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/miui/powercenter/BatteryFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/powercenter/BatteryFragment;->t:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmiuix/appcompat/app/Fragment;-><init>()V

    new-instance v0, Lcom/miui/powercenter/BatteryFragment$d;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/BatteryFragment$d;-><init>(Lcom/miui/powercenter/BatteryFragment;)V

    iput-object v0, p0, Lcom/miui/powercenter/BatteryFragment;->k:Lcom/miui/powercenter/BatteryFragment$d;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/powercenter/BatteryFragment;->o:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/powercenter/BatteryFragment;->q:I

    new-instance v0, Lcom/miui/powercenter/BatteryFragment$b;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/BatteryFragment$b;-><init>(Lcom/miui/powercenter/BatteryFragment;)V

    iput-object v0, p0, Lcom/miui/powercenter/BatteryFragment;->s:Landroid/widget/ViewSwitcher$ViewFactory;

    return-void
.end method

.method static synthetic A0(Lcom/miui/powercenter/BatteryFragment;)Landroid/widget/TextSwitcher;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/BatteryFragment;->h:Landroid/widget/TextSwitcher;

    return-object p0
.end method

.method static synthetic B0(Lcom/miui/powercenter/BatteryFragment;Landroid/widget/TextSwitcher;)Landroid/widget/TextSwitcher;
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/BatteryFragment;->h:Landroid/widget/TextSwitcher;

    return-object p1
.end method

.method static synthetic C0(Lcom/miui/powercenter/BatteryFragment;)Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/BatteryFragment;->f:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic D0(Lcom/miui/powercenter/BatteryFragment;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/BatteryFragment;->f:Landroid/widget/RelativeLayout;

    return-object p1
.end method

.method static synthetic E0(Lcom/miui/powercenter/BatteryFragment;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/BatteryFragment;->d:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic F0(Lcom/miui/powercenter/BatteryFragment;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/BatteryFragment;->d:Landroid/view/ViewGroup;

    return-object p1
.end method

.method static synthetic G0(Lcom/miui/powercenter/BatteryFragment;)Lcom/miui/powercenter/view/BatteryTipView;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/BatteryFragment;->l:Lcom/miui/powercenter/view/BatteryTipView;

    return-object p0
.end method

.method static synthetic H0(Lcom/miui/powercenter/BatteryFragment;Lcom/miui/powercenter/view/BatteryTipView;)Lcom/miui/powercenter/view/BatteryTipView;
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/BatteryFragment;->l:Lcom/miui/powercenter/view/BatteryTipView;

    return-object p1
.end method

.method private I0(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/BatteryFragment;->k:Lcom/miui/powercenter/BatteryFragment$d;

    new-instance v1, Lcom/miui/powercenter/BatteryFragment$a;

    invoke-direct {v1, p0, p1}, Lcom/miui/powercenter/BatteryFragment$a;-><init>(Lcom/miui/powercenter/BatteryFragment;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance p1, Loe/b;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-direct {p1, v0}, Loe/b;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/powercenter/BatteryFragment;->i:Loe/a;

    new-instance v0, Lcom/miui/powercenter/BatteryFragment$c;

    iget-object v1, p0, Lcom/miui/powercenter/BatteryFragment;->k:Lcom/miui/powercenter/BatteryFragment$d;

    invoke-direct {v0, v1, p1}, Lcom/miui/powercenter/BatteryFragment$c;-><init>(Landroid/os/Handler;Loe/a;)V

    invoke-static {v0}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private J0(Landroid/graphics/Typeface;)Landroid/text/style/TypefaceSpan;
    .locals 5

    :try_start_0
    const-class v0, Landroid/text/style/TypefaceSpan;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/graphics/Typeface;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    if-eqz v0, :cond_0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/text/style/TypefaceSpan;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_0

    :catch_3
    move-exception p1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private static K0(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lme/w;->B(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0}, Lme/w;->l(Landroid/content/Context;)I

    move-result v1

    const/high16 v2, -0x80000000

    if-eq v0, v2, :cond_0

    sub-int v2, v1, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v3, 0x5

    if-le v2, v3, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    const/16 v1, 0xa

    if-gt v0, v1, :cond_2

    const v0, 0x7f121286

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/16 v1, 0x1f

    if-gt v0, v1, :cond_3

    const v0, 0x7f121287

    goto :goto_0

    :cond_3
    const/16 v1, 0x2b

    if-gt v0, v1, :cond_4

    const v0, 0x7f121288

    goto :goto_0

    :cond_4
    const/16 v1, 0x2e

    if-gt v0, v1, :cond_5

    const v0, 0x7f121285

    goto :goto_0

    :cond_5
    const v0, 0x7f121284

    goto :goto_0
.end method

.method private static L0()Z
    .locals 3

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget v0, Lcom/miui/powercenter/BatteryFragment;->u:I

    if-nez v0, :cond_1

    invoke-static {}, Lme/b;->o()I

    move-result v0

    sput v0, Lcom/miui/powercenter/BatteryFragment;->u:I

    :cond_1
    sget v0, Lcom/miui/powercenter/BatteryFragment;->u:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private N0(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/BatteryFragment;->l:Lcom/miui/powercenter/view/BatteryTipView;

    invoke-virtual {v0, p1}, Lcom/miui/powercenter/view/BatteryTipView;->setLevel(I)V

    iget-object v0, p0, Lcom/miui/powercenter/BatteryFragment;->m:Lcom/miui/powercenter/view/BatteryHealthNewView;

    invoke-virtual {v0, p1}, Lcom/miui/powercenter/view/BatteryHealthNewView;->setLevel(I)V

    return-void
.end method

.method static synthetic b0(Lcom/miui/powercenter/BatteryFragment;)Landroid/view/ViewStub;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/BatteryFragment;->j:Landroid/view/ViewStub;

    return-object p0
.end method

.method static synthetic c0(Lcom/miui/powercenter/BatteryFragment;Landroid/view/ViewStub;)Landroid/view/ViewStub;
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/BatteryFragment;->j:Landroid/view/ViewStub;

    return-object p1
.end method

.method static synthetic d0(Lcom/miui/powercenter/BatteryFragment;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/BatteryFragment;->a:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic e0(Lcom/miui/powercenter/BatteryFragment;)Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryTipView;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/BatteryFragment;->n:Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryTipView;

    return-object p0
.end method

.method static synthetic f0(Lcom/miui/powercenter/BatteryFragment;Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryTipView;)Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryTipView;
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/BatteryFragment;->n:Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryTipView;

    return-object p1
.end method

.method static synthetic g0(Lcom/miui/powercenter/BatteryFragment;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/BatteryFragment;->a:Landroid/view/ViewGroup;

    return-object p1
.end method

.method static synthetic h0(Lcom/miui/powercenter/BatteryFragment;)Lcom/miui/powercenter/view/BatteryHealthNewView;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/BatteryFragment;->m:Lcom/miui/powercenter/view/BatteryHealthNewView;

    return-object p0
.end method

.method static synthetic i0(Lcom/miui/powercenter/BatteryFragment;Lcom/miui/powercenter/view/BatteryHealthNewView;)Lcom/miui/powercenter/view/BatteryHealthNewView;
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/BatteryFragment;->m:Lcom/miui/powercenter/view/BatteryHealthNewView;

    return-object p1
.end method

.method static synthetic j0(Lcom/miui/powercenter/BatteryFragment;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/BatteryFragment;->r:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic k0(Lcom/miui/powercenter/BatteryFragment;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/BatteryFragment;->r:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method static synthetic l0()Z
    .locals 1

    invoke-static {}, Lcom/miui/powercenter/BatteryFragment;->L0()Z

    move-result v0

    return v0
.end method

.method static synthetic m0(Lcom/miui/powercenter/BatteryFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/powercenter/BatteryFragment;->q:I

    return p0
.end method

.method static synthetic n0(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/miui/powercenter/BatteryFragment;->K0(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic o0(Lcom/miui/powercenter/BatteryFragment;)Landroid/widget/ViewSwitcher$ViewFactory;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/BatteryFragment;->s:Landroid/widget/ViewSwitcher$ViewFactory;

    return-object p0
.end method

.method static synthetic p0(Lcom/miui/powercenter/BatteryFragment;Loe/a;)Loe/a;
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/BatteryFragment;->i:Loe/a;

    return-object p1
.end method

.method static synthetic q0()I
    .locals 1

    sget v0, Lcom/miui/powercenter/BatteryFragment;->u:I

    return v0
.end method

.method static synthetic r0(Lcom/miui/powercenter/BatteryFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/BatteryFragment;->N0(I)V

    return-void
.end method

.method static synthetic s0(Lcom/miui/powercenter/BatteryFragment;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/BatteryFragment;->c:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic t0(Lcom/miui/powercenter/BatteryFragment;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/BatteryFragment;->c:Landroid/view/ViewGroup;

    return-object p1
.end method

.method static synthetic u0(Lcom/miui/powercenter/BatteryFragment;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/BatteryFragment;->b:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic v0(Lcom/miui/powercenter/BatteryFragment;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/BatteryFragment;->b:Landroid/view/ViewGroup;

    return-object p1
.end method

.method static synthetic w0(Lcom/miui/powercenter/BatteryFragment;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/BatteryFragment;->g:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic x0(Lcom/miui/powercenter/BatteryFragment;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/BatteryFragment;->g:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic y0(Lcom/miui/powercenter/BatteryFragment;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/BatteryFragment;->e:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic z0(Lcom/miui/powercenter/BatteryFragment;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/BatteryFragment;->e:Landroid/view/ViewGroup;

    return-object p1
.end method


# virtual methods
.method public M0()V
    .locals 11

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lme/c0;->b(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f071df9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f071e2a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {}, Lee/b;->f()I

    move-result v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-le v3, v6, :cond_0

    move v7, v5

    goto :goto_0

    :cond_0
    move v7, v6

    :goto_0
    const v8, 0x7f1000f1

    invoke-virtual {v4, v8, v7}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v8, 0x0

    aput-object v3, v5, v8

    aput-object v4, v5, v6

    const-string v3, "%d %s"

    invoke-static {v7, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Landroid/text/SpannableString;

    invoke-direct {v5, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v7, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v7, v1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v1, v2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    const/16 v10, 0x11

    invoke-virtual {v5, v7, v2, v9, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    sub-int/2addr v2, v6

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/16 v7, 0x12

    invoke-virtual {v5, v1, v2, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_1

    invoke-direct {p0, v0}, Lcom/miui/powercenter/BatteryFragment;->J0(Landroid/graphics/Typeface;)Landroid/text/style/TypefaceSpan;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/miui/powercenter/BatteryFragment;->J0(Landroid/graphics/Typeface;)Landroid/text/style/TypefaceSpan;

    move-result-object v0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v1, v8, v0, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    iget-object v0, p0, Lcom/miui/powercenter/BatteryFragment;->h:Landroid/widget/TextSwitcher;

    invoke-virtual {v0, v5}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v1, 0x7f0b014c

    const-string v2, ""

    if-eq p1, v1, :cond_2

    const v1, 0x7f0b0222

    if-eq p1, v1, :cond_1

    const v1, 0x7f0b0b79

    if-eq p1, v1, :cond_0

    move-object p1, v2

    goto :goto_0

    :cond_0
    sget-object p1, Lp4/g;->c:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object p1, Lp4/g;->d:Ljava/lang/String;

    goto :goto_0

    :cond_2
    sget-object p1, Lp4/g;->b:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v2}, Lme/e0;->m(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/miui/powercenter/BatteryFragment;->p:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v0

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget p1, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p1, p1, 0xf

    iput p1, p0, Lcom/miui/powercenter/BatteryFragment;->q:I

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f13043e

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    new-instance p1, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object p1, p0, Lcom/miui/powercenter/BatteryFragment;->p:Landroid/content/res/Configuration;

    iget p1, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p1, p1, 0xf

    iput p1, p0, Lcom/miui/powercenter/BatteryFragment;->q:I

    const/4 p1, 0x0

    sput p1, Lcom/miui/powercenter/BatteryFragment;->u:I

    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0e03fd

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-static {}, Lcom/miui/powercenter/BatteryFragment;->L0()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Lme/d0;->g()V

    :cond_0
    const p2, 0x7f13043e

    invoke-virtual {p0, p2}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Lmiuix/appcompat/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-direct {p0, p1}, Lcom/miui/powercenter/BatteryFragment;->I0(Landroid/view/View;)V

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    if-eqz p1, :cond_1

    invoke-static {}, Lhd/a;->A()V

    invoke-static {}, Lcom/miui/powercenter/BatteryFragment;->L0()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/miui/powercenter/BatteryFragment;->o:Z

    if-eqz p1, :cond_0

    invoke-static {}, Lgd/c;->n()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lgd/c;->e1(I)V

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/powercenter/BatteryFragment;->o:Z

    :cond_1
    return-void
.end method
