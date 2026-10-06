.class public final Lcom/miui/gamebooster/utils/GameBoxToastHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/utils/GameBoxToastHelper$Duration;,
        Lcom/miui/gamebooster/utils/GameBoxToastHelper$a;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/miui/gamebooster/utils/GameBoxToastHelper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final LENGTH_LONG:I = 0x1

.field public static final LENGTH_SHORT:I = 0x0

.field private static final maxMessage:I = 0x8

.field private static final queue$delegate:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static toastShowing:Z

.field private static wm:Landroid/view/WindowManager;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/gamebooster/utils/GameBoxToastHelper;

    invoke-direct {v0}, Lcom/miui/gamebooster/utils/GameBoxToastHelper;-><init>()V

    sput-object v0, Lcom/miui/gamebooster/utils/GameBoxToastHelper;->INSTANCE:Lcom/miui/gamebooster/utils/GameBoxToastHelper;

    sget-object v0, Lcom/miui/gamebooster/utils/GameBoxToastHelper$b;->a:Lcom/miui/gamebooster/utils/GameBoxToastHelper$b;

    invoke-static {v0}, Loj/g;->a(Lak/a;)Loj/f;

    move-result-object v0

    sput-object v0, Lcom/miui/gamebooster/utils/GameBoxToastHelper;->queue$delegate:Loj/f;

    invoke-static {}, Lcom/miui/common/e;->d()Landroid/app/Application;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/WindowManager;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/WindowManager;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-object v0, Lcom/miui/gamebooster/utils/GameBoxToastHelper;->wm:Landroid/view/WindowManager;

    :cond_1
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/widget/TextView;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/gamebooster/utils/GameBoxToastHelper;->showToast$lambda$1(Landroid/widget/TextView;)V

    return-void
.end method

.method private final addNode(Lcom/miui/gamebooster/utils/GameBoxToastHelper$a;)Z
    .locals 2

    invoke-direct {p0}, Lcom/miui/gamebooster/utils/GameBoxToastHelper;->getQueue()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/miui/gamebooster/utils/GameBoxToastHelper;->getQueue()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    :cond_0
    invoke-direct {p0}, Lcom/miui/gamebooster/utils/GameBoxToastHelper;->getQueue()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private final createLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 3

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const v1, 0x50328

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {}, Lcom/miui/common/e;->d()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, La8/k2;->B(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/miui/common/e;->d()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070ef2

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/miui/common/e;->d()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070ef3

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    const/16 v2, 0x51

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v1, 0x7eb

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    return-object v0
.end method

.method private final createToastView()Landroid/widget/TextView;
    .locals 3

    invoke-static {}, Lcom/miui/common/e;->d()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e02a3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.widget.TextView"

    invoke-static {v0, v1}, Lbk/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getQueue()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Lcom/miui/gamebooster/utils/GameBoxToastHelper$a;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/miui/gamebooster/utils/GameBoxToastHelper;->queue$delegate:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    return-object v0
.end method

.method private final mainThread()Z
    .locals 2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final showBubbleNotificationConflictIfNeed(Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "msg"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/common/e;->d()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, La8/l0;->f(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/miui/gamebooster/utils/GameBoxToastHelper;->showToast(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private final showNextToast()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/gamebooster/utils/GameBoxToastHelper;->getQueue()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/utils/GameBoxToastHelper$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/gamebooster/utils/GameBoxToastHelper$a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/miui/gamebooster/utils/GameBoxToastHelper$a;->a()I

    move-result v0

    invoke-static {v1, v0}, Lcom/miui/gamebooster/utils/GameBoxToastHelper;->showToast(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static final showToast(Ljava/lang/String;I)V
    .locals 5
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "msg"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/miui/gamebooster/utils/GameBoxToastHelper;->INSTANCE:Lcom/miui/gamebooster/utils/GameBoxToastHelper;

    invoke-direct {v0}, Lcom/miui/gamebooster/utils/GameBoxToastHelper;->mainThread()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    sget-boolean v1, Lcom/miui/gamebooster/utils/GameBoxToastHelper;->toastShowing:Z

    if-eqz v1, :cond_1

    new-instance v1, Lcom/miui/gamebooster/utils/GameBoxToastHelper$a;

    invoke-direct {v1, p0, p1}, Lcom/miui/gamebooster/utils/GameBoxToastHelper$a;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1}, Lcom/miui/gamebooster/utils/GameBoxToastHelper;->addNode(Lcom/miui/gamebooster/utils/GameBoxToastHelper$a;)Z

    goto :goto_1

    :cond_1
    invoke-direct {v0}, Lcom/miui/gamebooster/utils/GameBoxToastHelper;->createToastView()Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    const-wide/16 v3, 0xbb8

    goto :goto_0

    :cond_2
    const-wide/16 v3, 0x7d0

    :goto_0
    new-instance p1, La8/n0;

    invoke-direct {p1, v1}, La8/n0;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v1, p1, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object p0, Lcom/miui/gamebooster/utils/GameBoxToastHelper;->wm:Landroid/view/WindowManager;

    if-eqz p0, :cond_3

    invoke-direct {v0}, Lcom/miui/gamebooster/utils/GameBoxToastHelper;->createLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    invoke-interface {p0, v1, p1}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    sput-boolean v2, Lcom/miui/gamebooster/utils/GameBoxToastHelper;->toastShowing:Z

    :goto_1
    return-void
.end method

.method private static final showToast$lambda$1(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "$toastView"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/miui/gamebooster/utils/GameBoxToastHelper;->wm:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 p0, 0x0

    sput-boolean p0, Lcom/miui/gamebooster/utils/GameBoxToastHelper;->toastShowing:Z

    sget-object p0, Lcom/miui/gamebooster/utils/GameBoxToastHelper;->INSTANCE:Lcom/miui/gamebooster/utils/GameBoxToastHelper;

    invoke-direct {p0}, Lcom/miui/gamebooster/utils/GameBoxToastHelper;->showNextToast()V

    :cond_1
    return-void
.end method


# virtual methods
.method public final getWm()Landroid/view/WindowManager;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object v0, Lcom/miui/gamebooster/utils/GameBoxToastHelper;->wm:Landroid/view/WindowManager;

    return-object v0
.end method

.method public final isShowing()Z
    .locals 1

    sget-boolean v0, Lcom/miui/gamebooster/utils/GameBoxToastHelper;->toastShowing:Z

    return v0
.end method

.method public final setWm(Landroid/view/WindowManager;)V
    .locals 0
    .param p1    # Landroid/view/WindowManager;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    sput-object p1, Lcom/miui/gamebooster/utils/GameBoxToastHelper;->wm:Landroid/view/WindowManager;

    return-void
.end method
