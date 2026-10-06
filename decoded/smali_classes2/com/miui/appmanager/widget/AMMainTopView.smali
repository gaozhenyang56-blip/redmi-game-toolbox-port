.class public Lcom/miui/appmanager/widget/AMMainTopView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final g:Landroid/net/Uri;

.field private static final h:Ljava/lang/String;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/miui/appmanager/widget/AMMainTopFunctionView;

.field private c:Lcom/miui/appmanager/widget/AMMainTopFunctionView;

.field private d:Lcom/miui/appmanager/widget/AMMainTopFunctionView;

.field private e:Landroid/view/View;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "mimarket://update"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/appmanager/widget/AMMainTopView;->g:Landroid/net/Uri;

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    const-string v0, "com.xiaomi.mipicks"

    goto :goto_0

    :cond_0
    const-string v0, "com.xiaomi.market"

    :goto_0
    sput-object v0, Lcom/miui/appmanager/widget/AMMainTopView;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/appmanager/widget/AMMainTopView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {p1}, Lbl/i;->f(Landroid/content/Context;)I

    move-result p2

    const/4 p3, 0x2

    if-ne p2, p3, :cond_0

    const p2, 0x7f0e0087

    goto :goto_0

    :cond_0
    const p2, 0x7f0e0086

    :goto_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const/4 v0, 0x1

    invoke-virtual {p3, p2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    iput-object p1, p0, Lcom/miui/appmanager/widget/AMMainTopView;->a:Landroid/content/Context;

    const p1, 0x7f0b0d54

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/appmanager/widget/AMMainTopFunctionView;

    iput-object p1, p0, Lcom/miui/appmanager/widget/AMMainTopView;->b:Lcom/miui/appmanager/widget/AMMainTopFunctionView;

    const p1, 0x7f0b0d58

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/appmanager/widget/AMMainTopFunctionView;

    iput-object p1, p0, Lcom/miui/appmanager/widget/AMMainTopView;->c:Lcom/miui/appmanager/widget/AMMainTopFunctionView;

    invoke-static {}, Lx4/k0;->k()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    const/16 p2, 0x8

    :goto_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f0b0d55

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/appmanager/widget/AMMainTopFunctionView;

    iput-object p1, p0, Lcom/miui/appmanager/widget/AMMainTopView;->d:Lcom/miui/appmanager/widget/AMMainTopFunctionView;

    const p1, 0x7f0b044d

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/appmanager/widget/AMMainTopView;->e:Landroid/view/View;

    invoke-direct {p0}, Lcom/miui/appmanager/widget/AMMainTopView;->a()V

    iget-object p1, p0, Lcom/miui/appmanager/widget/AMMainTopView;->b:Lcom/miui/appmanager/widget/AMMainTopFunctionView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/miui/appmanager/widget/AMMainTopView;->c:Lcom/miui/appmanager/widget/AMMainTopFunctionView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/miui/appmanager/widget/AMMainTopView;->d:Lcom/miui/appmanager/widget/AMMainTopFunctionView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_2

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/miui/appmanager/widget/AMMainTopView;->f:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/miui/appmanager/widget/AMMainTopView;->b:Lcom/miui/appmanager/widget/AMMainTopFunctionView;

    iget-object v1, v0, Lcom/miui/appmanager/widget/AMMainTopFunctionView;->a:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lx4/h0;->f(Landroid/view/View;Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/appmanager/widget/AMMainTopView;->c:Lcom/miui/appmanager/widget/AMMainTopFunctionView;

    iget-object v1, v0, Lcom/miui/appmanager/widget/AMMainTopFunctionView;->a:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lx4/h0;->f(Landroid/view/View;Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/appmanager/widget/AMMainTopView;->d:Lcom/miui/appmanager/widget/AMMainTopFunctionView;

    iget-object v1, v0, Lcom/miui/appmanager/widget/AMMainTopFunctionView;->a:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lx4/h0;->f(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method private b(Landroid/content/Intent;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/miui/appmanager/widget/AMMainTopView;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "AMMainTopView"

    const-string v1, "start AppCompatActivity error"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {p1}, Lcom/miui/analytics/AnalyticsUtil;->trackException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-string v0, "com.miui.securitycenter"

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "miui.intent.action.XSPACE_SETTING"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.miui.securitycore"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "dual_app"

    invoke-static {v0}, Lf3/a;->d(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/miui/appmanager/widget/AMMainTopView;->b(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_2
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v1, "miui.intent.action.OP_AUTO_START"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, p1}, Lcom/miui/appmanager/widget/AMMainTopView;->b(Landroid/content/Intent;)V

    const-string p1, "autostart"

    invoke-static {p1}, Lf3/a;->d(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.miui.securitycenter.action.TRANSITION"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, p1}, Lcom/miui/appmanager/widget/AMMainTopView;->b(Landroid/content/Intent;)V

    const-string p1, "app_lock"

    invoke-static {p1}, Lf3/a;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/appmanager/widget/AMMainTopView;->f:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1201f9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-static {}, Lgb/b;->d()Lgb/b;

    move-result-object p1

    invoke-virtual {p1, v0}, Lgb/b;->h(I)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lgb/b;->d()Lgb/b;

    move-result-object p1

    invoke-virtual {p1, v0}, Lgb/b;->n(I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0d54
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setLayoutPadding(I)V
    .locals 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/appmanager/widget/AMMainTopView;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/miui/appmanager/widget/AMMainTopView;->e:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {v0, p1, v1, p1, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_0
    return-void
.end method
