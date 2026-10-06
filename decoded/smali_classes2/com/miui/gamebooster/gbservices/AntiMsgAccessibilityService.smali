.class public Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;
.super Landroid/accessibilityservice/AccessibilityService;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService$g;,
        Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService$h;
    }
.end annotation


# static fields
.field private static final v:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/miui/gamebooster/customview/InCallNotificationView;

.field private b:Landroid/widget/FrameLayout;

.field private c:Lcom/miui/gamebooster/customview/j;

.field private d:Landroid/content/Intent;

.field private e:Landroid/content/Intent;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Z

.field private i:Z

.field private j:Landroid/view/WindowManager;

.field private k:Landroid/os/Handler;

.field private l:Lcom/miui/gamebooster/service/ISecurityCenterNotificationListener;

.field private m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private n:Landroid/content/BroadcastReceiver;

.field private final o:I

.field private final p:I

.field private final q:I

.field public final r:I

.field s:Landroid/animation/ObjectAnimator;

.field private t:Lcom/miui/gamebooster/service/NotificationListenerCallback;

.field private u:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService$a;

    invoke-direct {v0}, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService$a;-><init>()V

    sput-object v0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->v:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->h:Z

    iput-boolean v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->i:Z

    new-instance v0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService$b;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService$b;-><init>(Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;)V

    iput-object v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->m:Ljava/util/Map;

    new-instance v0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService$c;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService$c;-><init>(Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;)V

    iput-object v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->n:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->o:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->p:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->q:I

    const/16 v0, 0xc8

    iput v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->r:I

    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0}, Landroid/animation/ObjectAnimator;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->s:Landroid/animation/ObjectAnimator;

    new-instance v0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService$f;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService$f;-><init>(Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;)V

    iput-object v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->u:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic a(Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->p(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic b(Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->m()V

    return-void
.end method

.method static synthetic c(Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;Landroid/app/Notification;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->l(Landroid/app/Notification;)V

    return-void
.end method

.method static synthetic d(Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;)Lcom/miui/gamebooster/service/ISecurityCenterNotificationListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->l:Lcom/miui/gamebooster/service/ISecurityCenterNotificationListener;

    return-object p0
.end method

.method static synthetic e(Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;Lcom/miui/gamebooster/service/ISecurityCenterNotificationListener;)Lcom/miui/gamebooster/service/ISecurityCenterNotificationListener;
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->l:Lcom/miui/gamebooster/service/ISecurityCenterNotificationListener;

    return-object p1
.end method

.method static synthetic f(Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;)Lcom/miui/gamebooster/service/NotificationListenerCallback;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->t:Lcom/miui/gamebooster/service/NotificationListenerCallback;

    return-object p0
.end method

.method private g()V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->c:Lcom/miui/gamebooster/customview/j;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method

.method private i()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->b:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private k()I
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070dab

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private l(Landroid/app/Notification;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    const-string v0, "android.text"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    :cond_2
    sget-object p1, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->v:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->h(Z)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method private m()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->b:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-direct {p0}, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->g()V

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->a:Lcom/miui/gamebooster/customview/InCallNotificationView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/gamebooster/customview/InCallNotificationView;->c()V

    :cond_1
    return-void
.end method

.method private n()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->b:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0209

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->b:Landroid/widget/FrameLayout;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p0}, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->k()I

    move-result v1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->j(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x7d3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v1, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->j:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->b:Landroid/widget/FrameLayout;

    invoke-interface {v1, v3, v0}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/miui/gamebooster/customview/j;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/customview/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->c:Lcom/miui/gamebooster/customview/j;

    invoke-virtual {v0, p0}, Lcom/miui/gamebooster/customview/j;->a(Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;)V

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->c:Lcom/miui/gamebooster/customview/j;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->c:Lcom/miui/gamebooster/customview/j;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->b:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->c:Lcom/miui/gamebooster/customview/j;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AntiMsgAccessibilityService"

    const-string v2, "init float error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private o(Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const-string v2, "com.tencent.av.ui.VChatActivity"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object p1, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->e:Landroid/content/Intent;

    return v1

    :cond_0
    iget-object p1, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->m:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_2

    const-string v0, "com.tencent.mobileqq"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "QQ\u7535\u8bdd"

    goto :goto_0

    :cond_1
    const-string v0, "com.tencent.mm"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p1, "\u5fae\u4fe1\u7535\u8bdd"

    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->a:Lcom/miui/gamebooster/customview/InCallNotificationView;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/miui/gamebooster/customview/InCallNotificationView;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_3
    return v1
.end method

.method private p(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->f:Ljava/lang/String;

    const-string v0, "android.intent.extra.INTENT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->d:Landroid/content/Intent;

    const-string v0, "originating_uid"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->g:I

    iget-object p1, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->a:Lcom/miui/gamebooster/customview/InCallNotificationView;

    if-nez p1, :cond_0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0e0202

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/gamebooster/customview/InCallNotificationView;

    iput-object p1, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->a:Lcom/miui/gamebooster/customview/InCallNotificationView;

    invoke-virtual {p1, p0}, Lcom/miui/gamebooster/customview/InCallNotificationView;->b(Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;)V

    :cond_0
    iget-object p1, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->d:Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->f:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->o(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->a:Lcom/miui/gamebooster/customview/InCallNotificationView;

    invoke-virtual {p1}, Lcom/miui/gamebooster/customview/InCallNotificationView;->d()V

    invoke-direct {p0}, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->n()V

    invoke-direct {p0}, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->g()V

    iget-object p1, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->c:Lcom/miui/gamebooster/customview/j;

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->a:Lcom/miui/gamebooster/customview/InCallNotificationView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->b:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->c:Lcom/miui/gamebooster/customview/j;

    const v0, 0x7f0805dd

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->r(I)V

    iput-boolean p1, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->i:Z

    const-string v0, "gb_show_window"

    invoke-static {v0, p1}, Lr4/a;->n(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method private q(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getParcelableData()Landroid/os/Parcelable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getParcelableData()Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/app/Notification;

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->l(Landroid/app/Notification;)V

    return-void
.end method

.method private r(I)V
    .locals 8

    const-wide/16 v0, 0xc8

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "translationY"

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eq p1, v5, :cond_2

    if-eq p1, v6, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->c:Lcom/miui/gamebooster/customview/j;

    new-array v0, v6, [F

    fill-array-data v0, :array_0

    const-string v1, "alpha"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->s:Landroid/animation/ObjectAnimator;

    new-instance v0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService$e;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService$e;-><init>(Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->s:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x64

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->c:Lcom/miui/gamebooster/customview/j;

    new-array v6, v6, [F

    aput v2, v6, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    aput v2, v6, v5

    invoke-static {p1, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->s:Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService$d;

    invoke-direct {v2, p0}, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService$d;-><init>(Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;)V

    invoke-virtual {p1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->s:Landroid/animation/ObjectAnimator;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->c:Lcom/miui/gamebooster/customview/j;

    new-array v6, v6, [F

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    aput v7, v6, v3

    aput v2, v6, v5

    invoke-static {p1, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->s:Landroid/animation/ObjectAnimator;

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    :goto_1
    iget-object p1, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->s:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public h(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->i()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->r(I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->m()V

    :goto_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->i:Z

    const-string v0, "gb_show_window"

    invoke-static {v0, p1}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method protected j(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/WindowManager$LayoutParams;
    .locals 7

    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/16 v3, 0x7e1

    const v4, 0x800208

    const/4 v5, -0x2

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iget p1, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v0, 0x1000000

    or-int/2addr p1, v0

    iput p1, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 p1, 0x31

    iput p1, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const-string p1, "FloatNotificationPanel"

    invoke-virtual {v6, p1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-object v6
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, "com.tencent.mobileqq"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x40

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    if-ne v0, v2, :cond_2

    :goto_0
    invoke-direct {p0, p1}, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->q(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_1

    :cond_1
    const-string v1, "com.tencent.mm"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public onCreate()V
    .locals 8

    invoke-super {p0}, Landroid/accessibilityservice/AccessibilityService;->onCreate()V

    iget-boolean v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->h:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->h:Z

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "miui.intent.action.gb_show_window"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->n:Landroid/content/BroadcastReceiver;

    const/4 v6, 0x0

    const/4 v7, 0x4

    const-string v5, "com.miui.securitycenter.permission.GB_SHOW_WINDOW"

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lx4/v;->n(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    :cond_0
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->j:Landroid/view/WindowManager;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->k:Landroid/os/Handler;

    new-instance v0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService$h;

    iget-object v2, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->k:Landroid/os/Handler;

    invoke-direct {v0, v2, p0}, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService$h;-><init>(Landroid/os/Handler;Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;)V

    iput-object v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->t:Lcom/miui/gamebooster/service/NotificationListenerCallback;

    const-class v0, Lcom/miui/gamebooster/service/NotificationListener;

    invoke-static {p0, v0}, Lcom/miui/luckymoney/utils/SettingsUtil;->enableNotificationListener(Landroid/content/Context;Ljava/lang/Class;)V

    const-class v0, Lcom/miui/gamebooster/service/NotificationListener;

    invoke-static {p0, v0}, Lcom/miui/luckymoney/utils/SettingsUtil;->enableAccessibility(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/miui/gamebooster/service/NotificationListener;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->u:Landroid/content/ServiceConnection;

    invoke-static {}, Lx4/z1;->A()Landroid/os/UserHandle;

    move-result-object v3

    invoke-static {p0, v0, v2, v1, v3}, Lx4/v;->b(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    return-void
.end method

.method public onDestroy()V
    .locals 3

    invoke-super {p0}, Landroid/accessibilityservice/AccessibilityService;->onDestroy()V

    iget-boolean v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->h:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->h:Z

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->n:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->b:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->j:Landroid/view/WindowManager;

    invoke-interface {v2, v0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    :cond_1
    iget-boolean v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->i:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->s()V

    :cond_2
    const-string v0, "gb_show_window"

    invoke-static {v0, v1}, Lr4/a;->n(Ljava/lang/String;Z)V

    iput-boolean v1, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->i:Z

    :try_start_0
    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->l:Lcom/miui/gamebooster/service/ISecurityCenterNotificationListener;

    iget-object v1, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->t:Lcom/miui/gamebooster/service/NotificationListenerCallback;

    invoke-interface {v0, v1}, Lcom/miui/gamebooster/service/ISecurityCenterNotificationListener;->O2(Lcom/miui/gamebooster/service/INotificationListenerCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNoticationListenerBinder:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AntiMsgAccessibilityService"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-class v0, Lcom/miui/gamebooster/service/NotificationListener;

    invoke-static {p0, v0}, Lcom/miui/luckymoney/utils/SettingsUtil;->closeNotificationListener(Landroid/content/Context;Ljava/lang/Class;)V

    const-class v0, Lcom/miui/gamebooster/service/NotificationListener;

    invoke-static {p0, v0}, Lcom/miui/luckymoney/utils/SettingsUtil;->closeAccessibility(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->u:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->k:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onInterrupt()V
    .locals 0

    return-void
.end method

.method public s()V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->e:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->t(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->d:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->t(Landroid/content/Intent;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->e:Landroid/content/Intent;

    return-void
.end method

.method public t(Landroid/content/Intent;)V
    .locals 9

    if-eqz p1, :cond_1

    const v0, 0x7f010012

    const v1, 0x7f010013

    invoke-static {p0, v0, v1}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    iget v1, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->g:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Intent;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Landroid/os/Bundle;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-class v4, Landroid/os/UserHandle;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    invoke-static {v1}, Lx4/z1;->z(I)Landroid/os/UserHandle;

    move-result-object v1

    const-class v4, Landroid/content/ContextWrapper;

    const-string v8, "startActivityAsUser"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    aput-object v0, v2, v6

    aput-object v1, v2, v7

    invoke-static {v4, p0, v8, v3, v2}, Lbh/f;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/high16 v1, 0x10000000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
