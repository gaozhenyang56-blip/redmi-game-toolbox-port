.class public Lcom/miui/antivirus/result/k;
.super Lcom/miui/antivirus/result/c;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Z

.field private i:I

.field private j:I

.field private k:Ljava/lang/String;

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/antivirus/result/k;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/antivirus/result/c;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/antivirus/result/k;->i:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/antivirus/result/k;->j:I

    return-void
.end method

.method private constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    invoke-direct {p0}, Lcom/miui/antivirus/result/c;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/antivirus/result/k;->i:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/antivirus/result/k;->j:I

    const-string v1, "img"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/antivirus/result/k;->c:Ljava/lang/String;

    const-string v1, "title"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/antivirus/result/k;->a:Ljava/lang/String;

    const-string v1, "summary"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/antivirus/result/k;->b:Ljava/lang/String;

    const-string v1, "cornerTip"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/antivirus/result/k;->e:Ljava/lang/String;

    const-string v1, "url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/antivirus/result/k;->d:Ljava/lang/String;

    const-string v1, "template"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/miui/antivirus/result/k;->j:I

    const-string v1, "button"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/antivirus/result/k;->f:Ljava/lang/String;

    const-string v1, "dataId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/antivirus/result/k;->k:Ljava/lang/String;

    const-string v1, "browserOpen"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/antivirus/result/k;->g:Z

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "showAdChoice"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/antivirus/result/k;->h:Z

    :cond_0
    const-string v0, "buttonColor"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/miui/antivirus/result/k;->i:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "MiActivity"

    const-string v1, "msg"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/miui/antivirus/result/k;Lcom/miui/antivirus/activity/MainActivity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/antivirus/result/k;->i(Lcom/miui/antivirus/activity/MainActivity;)V

    return-void
.end method

.method private c(Lcom/miui/antivirus/activity/MainActivity;)V
    .locals 6

    invoke-static {}, Lc3/k;->g()Lc3/k;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v2, Lcom/miui/antivirus/result/k$a;

    invoke-direct {v2, p0, v1}, Lcom/miui/antivirus/result/k$a;-><init>(Lcom/miui/antivirus/result/k;Ljava/lang/ref/WeakReference;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc3/k;->h(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p1, :cond_0

    const-string p1, "com.miui.securitycenter_globaladevent"

    goto :goto_0

    :cond_0
    const-string p1, "com.miui.securitycenter_virusresult"

    :goto_0
    move-object v4, p1

    const-string v3, "com.miui.securitycenter"

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Lc3/k;->j(Landroid/content/Context;Lcom/xiaomi/ad/feedback/IAdFeedbackListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v0, "MiActivity"

    const-string v1, "connect fail, maybe not support dislike window"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/miui/antivirus/result/k;->i(Lcom/miui/antivirus/activity/MainActivity;)V

    :goto_1
    return-void
.end method

.method public static d(Lorg/json/JSONObject;)Lcom/miui/antivirus/result/k;
    .locals 4

    const-string v0, "template"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    return-object v1

    :pswitch_0
    new-instance v0, Lcom/miui/antivirus/result/k;

    invoke-direct {v0, p0}, Lcom/miui/antivirus/result/k;-><init>(Lorg/json/JSONObject;)V

    iget-object p0, v0, Lcom/miui/antivirus/result/k;->d:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    iget-object p0, v0, Lcom/miui/antivirus/result/k;->d:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p0, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, p0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_2

    :cond_1
    return-object v1

    :catch_0
    move-exception p0

    const-string v1, "MiActivity"

    const-string v2, "msg"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-object v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private i(Lcom/miui/antivirus/activity/MainActivity;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/miui/antivirus/result/k$b;

    invoke-direct {v1, p0, p1}, Lcom/miui/antivirus/result/k$b;-><init>(Lcom/miui/antivirus/result/k;Lcom/miui/antivirus/activity/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public b(Lcom/miui/antivirus/result/k;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/result/k;->l:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/antivirus/result/k;->l:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/miui/antivirus/result/k;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bindView(ILandroid/view/View;Landroid/content/Context;Lcom/miui/antivirus/result/n;)V
    .locals 3

    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/antivirus/result/c;->bindView(ILandroid/view/View;Landroid/content/Context;Lcom/miui/antivirus/result/n;)V

    iget p1, p0, Lcom/miui/antivirus/result/k;->j:I

    const/4 p3, 0x0

    const v0, 0x7f080954

    const/16 v1, 0x3e9

    if-eq p1, v1, :cond_4

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/antivirus/result/r;

    iget-object p2, p1, Lcom/miui/antivirus/result/r;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/antivirus/result/k;->b:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p1, Lcom/miui/antivirus/result/r;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/antivirus/result/k;->a:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p1, Lcom/miui/antivirus/result/r;->e:Landroid/view/View;

    const/4 v1, 0x4

    if-eqz p2, :cond_1

    iget-boolean v2, p0, Lcom/miui/antivirus/result/k;->h:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move p3, v1

    :goto_0
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget p2, p0, Lcom/miui/antivirus/result/k;->j:I

    if-eq p2, v1, :cond_3

    const/4 p3, 0x6

    if-ne p2, p3, :cond_2

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/miui/antivirus/result/k;->c:Ljava/lang/String;

    iget-object p3, p1, Lcom/miui/antivirus/result/r;->c:Landroid/widget/ImageView;

    sget-object v0, Lx4/o0;->c:Lrh/c;

    invoke-virtual {p4}, Lcom/miui/antivirus/result/n;->a()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    invoke-static {p2, p3, v0, p4}, Lx4/o0;->f(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_3
    :goto_1
    iget-object p2, p0, Lcom/miui/antivirus/result/k;->c:Ljava/lang/String;

    iget-object p3, p1, Lcom/miui/antivirus/result/r;->c:Landroid/widget/ImageView;

    sget-object p4, Lx4/o0;->h:Lrh/c;

    invoke-static {p2, p3, p4, v0}, Lx4/o0;->e(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;I)V

    :goto_2
    iget-object p1, p1, Lcom/miui/antivirus/result/r;->d:Landroid/widget/Button;

    if-eqz p1, :cond_8

    iget-object p2, p0, Lcom/miui/antivirus/result/k;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/antivirus/result/p;

    iget-object p2, p0, Lcom/miui/antivirus/result/k;->l:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 p4, 0x3

    if-ge p2, p4, :cond_5

    return-void

    :cond_5
    iget-object p2, p0, Lcom/miui/antivirus/result/k;->l:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/antivirus/result/k;

    iget-object p3, p1, Lcom/miui/antivirus/result/p;->d:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/miui/antivirus/result/k;->g()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/miui/antivirus/result/k;->e()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_6

    iget-object p3, p1, Lcom/miui/antivirus/result/p;->g:Landroid/widget/ImageView;

    if-eqz p3, :cond_6

    invoke-virtual {p2}, Lcom/miui/antivirus/result/k;->e()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p1, Lcom/miui/antivirus/result/p;->g:Landroid/widget/ImageView;

    sget-object p4, Lx4/o0;->h:Lrh/c;

    invoke-static {p2, p3, p4, v0}, Lx4/o0;->e(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;I)V

    :cond_6
    iget-object p2, p0, Lcom/miui/antivirus/result/k;->l:Ljava/util/List;

    const/4 p3, 0x1

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/antivirus/result/k;

    iget-object p3, p1, Lcom/miui/antivirus/result/p;->e:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/miui/antivirus/result/k;->g()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/miui/antivirus/result/k;->e()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_7

    iget-object p3, p1, Lcom/miui/antivirus/result/p;->h:Landroid/widget/ImageView;

    if-eqz p3, :cond_7

    invoke-virtual {p2}, Lcom/miui/antivirus/result/k;->e()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p1, Lcom/miui/antivirus/result/p;->h:Landroid/widget/ImageView;

    sget-object p4, Lx4/o0;->h:Lrh/c;

    invoke-static {p2, p3, p4, v0}, Lx4/o0;->e(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;I)V

    :cond_7
    iget-object p2, p0, Lcom/miui/antivirus/result/k;->l:Ljava/util/List;

    const/4 p3, 0x2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/antivirus/result/k;

    iget-object p3, p1, Lcom/miui/antivirus/result/p;->f:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/miui/antivirus/result/k;->g()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/miui/antivirus/result/k;->e()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_8

    iget-object p3, p1, Lcom/miui/antivirus/result/p;->i:Landroid/widget/ImageView;

    if-eqz p3, :cond_8

    invoke-virtual {p2}, Lcom/miui/antivirus/result/k;->e()Ljava/lang/String;

    move-result-object p2

    iget-object p1, p1, Lcom/miui/antivirus/result/p;->i:Landroid/widget/ImageView;

    sget-object p3, Lx4/o0;->h:Lrh/c;

    invoke-static {p2, p1, p3, v0}, Lx4/o0;->e(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;I)V

    :cond_8
    :goto_3
    iget-object p1, p0, Lcom/miui/antivirus/result/k;->k:Ljava/lang/String;

    invoke-static {p1}, Lq2/b$b;->q(Ljava/lang/String;)V

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/result/k;->c:Ljava/lang/String;

    return-object v0
.end method

.method public f()I
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/result/k;->l:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/result/k;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutId()I
    .locals 2

    iget v0, p0, Lcom/miui/antivirus/result/k;->j:I

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    const v0, 0x7f0e0517

    goto :goto_0

    :pswitch_0
    const v0, 0x7f0e051e

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0e051c

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0e0519

    goto :goto_0

    :pswitch_3
    const v0, 0x7f0e0518

    goto :goto_0

    :cond_0
    const v0, 0x7f0e051a

    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/result/k;->d:Ljava/lang/String;

    return-object v0
.end method

.method public j(I)V
    .locals 0

    iput p1, p0, Lcom/miui/antivirus/result/k;->j:I

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b025b

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/miui/antivirus/activity/MainActivity;

    invoke-direct {p0, p1}, Lcom/miui/antivirus/result/k;->c(Lcom/miui/antivirus/activity/MainActivity;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/antivirus/result/k;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/antivirus/result/k;->k:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/antivirus/result/k;->g()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/miui/antivirus/result/k;->g:Z

    iget v4, p0, Lcom/miui/antivirus/result/k;->j:I

    const/16 v5, 0x3e9

    if-ne v4, v5, :cond_3

    const v4, 0x7f0b051d

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v0, p0, Lcom/miui/antivirus/result/k;->l:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/result/k;

    invoke-virtual {v0}, Lcom/miui/antivirus/result/k;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/miui/antivirus/result/k;->g()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/miui/antivirus/result/k;->k:Ljava/lang/String;

    iget-boolean v0, v0, Lcom/miui/antivirus/result/k;->g:Z

    move-object v6, v3

    move v3, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_1

    :cond_1
    const v4, 0x7f0b051e

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v0, p0, Lcom/miui/antivirus/result/k;->l:Ljava/util/List;

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/result/k;

    invoke-virtual {v0}, Lcom/miui/antivirus/result/k;->h()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/miui/antivirus/result/k;->k:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/miui/antivirus/result/k;->g()Ljava/lang/String;

    move-result-object v3

    iget-boolean v0, v0, Lcom/miui/antivirus/result/k;->g:Z

    move-object v6, v3

    move v3, v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v6

    goto :goto_1

    :cond_2
    const v4, 0x7f0b051f

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v0, p0, Lcom/miui/antivirus/result/k;->l:Ljava/util/List;

    const/4 v1, 0x2

    goto :goto_0

    :cond_3
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    return-void

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    if-nez v3, :cond_5

    :try_start_0
    const-string v3, "http"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {p1, v0, v2}, Leg/i;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    invoke-static {p1, v0}, Lcom/miui/antivirus/result/c;->openUrl(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string v0, "MiActivity"

    const-string v2, "msg"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    invoke-static {v1}, Lq2/b$b;->p(Ljava/lang/String;)V

    return-void
.end method
