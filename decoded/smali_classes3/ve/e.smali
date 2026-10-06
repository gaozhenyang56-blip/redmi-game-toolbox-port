.class public Lve/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lrh/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lrh/c$b;

    invoke-direct {v0}, Lrh/c$b;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lrh/c$b;->x(Z)Lrh/c$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lrh/c$b;->y(Z)Lrh/c$b;

    move-result-object v0

    const v2, 0x7f080632

    invoke-virtual {v0, v2}, Lrh/c$b;->H(I)Lrh/c$b;

    move-result-object v0

    invoke-virtual {v0, v2}, Lrh/c$b;->I(I)Lrh/c$b;

    move-result-object v0

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v2}, Lrh/c$b;->v(Landroid/graphics/Bitmap$Config;)Lrh/c$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lrh/c$b;->A(Z)Lrh/c$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lrh/c$b;->F(Z)Lrh/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lrh/c$b;->w()Lrh/c;

    move-result-object v0

    sput-object v0, Lve/e;->a:Lrh/c;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/miui/gamebooster/model/ActiveModel;Lve/d;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, p2, v0, v1}, Lve/e;->b(Landroid/content/Context;Lcom/miui/gamebooster/model/ActiveModel;Lve/d;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static b(Landroid/content/Context;Lcom/miui/gamebooster/model/ActiveModel;Lve/d;Ljava/lang/String;Z)Z
    .locals 9

    const/4 v0, 0x0

    if-eqz p0, :cond_10

    if-nez p1, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p1}, Lcom/miui/gamebooster/model/ActiveModel;->getBrowserUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    invoke-static {}, Lcom/miui/gamebooster/utils/c;->j()Lcom/miui/gamebooster/utils/c;

    move-result-object v4

    const-string v5, "click"

    invoke-static {p2, p1, v5}, Lcom/miui/gamebooster/utils/c;->h(Lve/d;Lcom/miui/gamebooster/model/ActiveModel;Ljava/lang/String;)Lcom/miui/gamebooster/model/ActiveTrackModel;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/miui/gamebooster/utils/c;->f(Lcom/miui/gamebooster/model/ActiveTrackModel;)V

    sget-object v4, Lve/d;->c:Lve/d;

    const/4 v5, 0x1

    if-ne p2, v4, :cond_2

    invoke-virtual {p1, v5}, Lcom/miui/gamebooster/model/ActiveModel;->setHasRedPointShow(Z)V

    :cond_2
    invoke-virtual {p1}, Lcom/miui/gamebooster/model/ActiveModel;->increaseClickTimes()V

    invoke-static {}, Lve/g;->m()Lve/g;

    move-result-object v4

    invoke-virtual {v4}, Lve/g;->p()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/ActiveModel;->isSupportOpenBigWindow()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/ActiveModel;->getActiveShowType()I

    move-result v4

    if-ne v4, v5, :cond_6

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/ActiveModel;->canOpenByFloatingWindow()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/ActiveModel;->getBrowserUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    :cond_3
    :try_start_0
    invoke-virtual {p1}, Lcom/miui/gamebooster/model/ActiveModel;->getBrowserUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v6, "displayType"

    invoke-virtual {v4, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    const-string v8, "http"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string v7, "https"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_4
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "horizontal"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "vertical"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    invoke-static {}, Lve/g;->m()Lve/g;

    move-result-object v4

    invoke-virtual {v4, p1, p3, p4}, Lve/g;->y(Lcom/miui/gamebooster/model/ActiveModel;Ljava/lang/String;Z)Z

    move-result p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p3, :cond_6

    return v5

    :catch_0
    :cond_6
    invoke-static {}, Lve/g;->m()Lve/g;

    move-result-object p3

    invoke-virtual {p3}, Lve/g;->p()Z

    move-result p3

    if-eqz p3, :cond_8

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/ActiveModel;->isSupportOpenBigWindow()Z

    move-result p3

    if-nez p3, :cond_7

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/ActiveModel;->getActiveShowType()I

    move-result p3

    if-ne p3, v5, :cond_8

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/ActiveModel;->canOpenByFloatingWindow()Z

    move-result p3

    if-nez p3, :cond_7

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/ActiveModel;->canOpenByFloatingWindowHttp()Z

    move-result p3

    if-eqz p3, :cond_8

    :cond_7
    invoke-static {}, Lve/g;->m()Lve/g;

    move-result-object p3

    invoke-virtual {p3, p1}, Lve/g;->u(Lcom/miui/gamebooster/model/ActiveModel;)Z

    move-result p3

    if-eqz p3, :cond_8

    invoke-virtual {p2}, Lve/d;->a()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v5}, Lcom/miui/gamebooster/utils/a;->s0(Ljava/lang/String;Z)V

    return v5

    :cond_8
    invoke-virtual {p2}, Lve/d;->a()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v0}, Lcom/miui/gamebooster/utils/a;->s0(Ljava/lang/String;Z)V

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/ActiveModel;->getHttpBrowserUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const-string p3, "ActiveViewUtils"

    if-nez p2, :cond_9

    :try_start_1
    invoke-virtual {p1}, Lcom/miui/gamebooster/model/ActiveModel;->getHttpBrowserUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lve/e;->e(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    const-string p1, "handleActiveClicked: "

    invoke-static {p3, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return v5

    :cond_9
    invoke-virtual {p1}, Lcom/miui/gamebooster/model/ActiveModel;->getActiveShowType()I

    move-result p2

    const/4 p4, 0x3

    if-ne p2, p4, :cond_a

    invoke-static {p0, v1}, Lve/e;->d(Landroid/content/Context;Ljava/lang/String;)V

    return v5

    :cond_a
    const-string p2, "migamecenter"

    invoke-virtual {v1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    const p4, 0x7f12098d

    if-eqz p2, :cond_f

    const-string p2, "com.xiaomi.gamecenter"

    invoke-static {p0, p2}, Lx4/g1;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-static {}, Lx4/t;->h()I

    move-result p1

    const/16 p2, 0x8

    if-le p1, p2, :cond_b

    invoke-static {p0, v2, v3, p4, v5}, La8/a0;->S(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;IZ)V

    goto :goto_3

    :cond_b
    invoke-static {p0, v1}, Lve/e;->d(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0}, Lve/e;->f(Landroid/content/Context;)V

    goto :goto_3

    :cond_c
    instance-of p2, p1, Lcom/miui/gamebooster/model/ActiveNewModel;

    if-eqz p2, :cond_d

    check-cast p1, Lcom/miui/gamebooster/model/ActiveNewModel;

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/ActiveNewModel;->getWebUrl()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_d
    const-string p1, ""

    :goto_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_e

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1, v3, p4, v5}, La8/a0;->S(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;IZ)V

    goto :goto_3

    :cond_e
    const p1, 0x7f1209a8

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    const-string p0, "invalid url"

    invoke-static {p3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_f
    invoke-static {p0, v2, v3, p4}, La8/a0;->R(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)V

    :goto_3
    return v5

    :cond_10
    :goto_4
    return v0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "ActiveViewUtils"

    const-string p1, "openBrowserFreeformWindow error! url is null!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 v0, 0x0

    const v1, 0x7f12098d

    invoke-static {p0, p1, v0, v1}, La8/a0;->R(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)V

    if-eqz p2, :cond_1

    invoke-static {p0}, Ls8/h;->I0(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method private static d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x18000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ActiveViewUtils"

    const-string v0, "start activity error"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private static e(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x18000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 p1, 0x0

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "com.mi.globalbrowser"

    const-string v3, "com.android.browser"

    if-eqz v1, :cond_0

    :try_start_1
    invoke-static {p0, v2}, Lx4/g1;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object p1, v2

    goto :goto_0

    :cond_0
    invoke-static {p0, v3}, Lx4/g1;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object p1, v3

    :cond_1
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    invoke-static {p0, v0, p1}, La8/a0;->P(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "ActiveViewUtils"

    const-string v0, "start activity error"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method private static f(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.miui.gamebooster.action.STOP_GAMEMODE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
