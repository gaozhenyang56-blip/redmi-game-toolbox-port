.class public Lcom/miui/antivirus/result/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/miui/securitycenter/Application;

.field public static b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field static c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    sput-object v0, Lcom/miui/antivirus/result/h;->a:Lcom/miui/securitycenter/Application;

    new-instance v0, Lcom/miui/antivirus/result/h$a;

    invoke-direct {v0}, Lcom/miui/antivirus/result/h$a;-><init>()V

    sput-object v0, Lcom/miui/antivirus/result/h;->b:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/antivirus/result/h;->c:Ljava/util/List;

    return-void
.end method

.method public static a()Lcom/miui/antivirus/result/g;
    .locals 3

    new-instance v0, Lcom/miui/antivirus/result/g;

    invoke-direct {v0}, Lcom/miui/antivirus/result/g;-><init>()V

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/result/g;->k(I)V

    const v1, 0x7f120533

    invoke-static {v1}, Lcom/miui/antivirus/result/h;->e(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/result/g;->q(Ljava/lang/String;)V

    const v1, 0x7f120532

    invoke-static {v1}, Lcom/miui/antivirus/result/h;->e(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/result/g;->n(Ljava/lang/String;)V

    const v1, 0x7f12052c

    invoke-static {v1}, Lcom/miui/antivirus/result/h;->e(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/result/g;->j(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/result/g;->l(I)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/result/g;->o(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drawable://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lc4/j;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/result/g;->m(Ljava/lang/String;)V

    return-object v0
.end method

.method public static b()Lcom/miui/antivirus/result/f;
    .locals 7

    invoke-static {}, Lcom/miui/antivirus/result/h;->d()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Lcom/miui/antivirus/result/h;->c()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {}, Lcom/miui/antivirus/result/h;->l()V

    new-instance v2, Lcom/miui/antivirus/result/f;

    invoke-direct {v2}, Lcom/miui/antivirus/result/f;-><init>()V

    const-string v3, "******************"

    invoke-virtual {v2, v3}, Lcom/miui/antivirus/result/f;->m(Ljava/lang/String;)V

    const-string v3, "01"

    invoke-virtual {v2, v3}, Lcom/miui/antivirus/result/f;->o(Ljava/lang/String;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3}, Lcom/miui/antivirus/result/f;->n(Ljava/util/List;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/antivirus/result/g;

    invoke-virtual {v4}, Lcom/miui/antivirus/result/g;->g()I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/miui/antivirus/result/h;->h(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    :goto_1
    invoke-virtual {v4}, Lcom/miui/antivirus/result/g;->d()Lcom/miui/antivirus/result/g;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/antivirus/result/g;

    invoke-virtual {v4}, Lcom/miui/antivirus/result/g;->g()I

    move-result v5

    invoke-static {v5, v6}, Lcom/miui/antivirus/result/h;->h(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_2
    return-object v2
.end method

.method private static c()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/miui/antivirus/result/g;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method private static d()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/miui/antivirus/result/g;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/miui/antivirus/result/h;->b:Ljava/util/HashMap;

    const/16 v2, 0x2b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/antivirus/result/g;

    invoke-direct {v1}, Lcom/miui/antivirus/result/g;-><init>()V

    invoke-virtual {v1, v2}, Lcom/miui/antivirus/result/g;->k(I)V

    const v2, 0x7f12008b

    invoke-static {v2}, Lcom/miui/antivirus/result/h;->e(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/antivirus/result/g;->q(Ljava/lang/String;)V

    const v2, 0x7f120536

    invoke-static {v2}, Lcom/miui/antivirus/result/h;->e(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/antivirus/result/g;->n(Ljava/lang/String;)V

    const v2, 0x7f120537

    invoke-static {v2}, Lcom/miui/antivirus/result/h;->e(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/antivirus/result/g;->j(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/miui/antivirus/result/g;->l(I)V

    invoke-virtual {v1, v3}, Lcom/miui/antivirus/result/g;->o(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "drawable://"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lc4/j;->b()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/antivirus/result/g;->m(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v1, Lcom/miui/antivirus/result/g;

    invoke-direct {v1}, Lcom/miui/antivirus/result/g;-><init>()V

    const/16 v2, 0x19

    invoke-virtual {v1, v2}, Lcom/miui/antivirus/result/g;->k(I)V

    const v2, 0x7f121a3b

    invoke-static {v2}, Lcom/miui/antivirus/result/h;->e(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/antivirus/result/g;->q(Ljava/lang/String;)V

    const v2, 0x7f1219f5

    invoke-static {v2}, Lcom/miui/antivirus/result/h;->e(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/antivirus/result/g;->n(Ljava/lang/String;)V

    const v2, 0x7f120b64

    invoke-static {v2}, Lcom/miui/antivirus/result/h;->e(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/miui/antivirus/result/g;->j(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/miui/antivirus/result/g;->l(I)V

    invoke-virtual {v1, v3}, Lcom/miui/antivirus/result/g;->o(I)V

    const-string v5, "assets://img/ziqidongguanli.png"

    invoke-virtual {v1, v5}, Lcom/miui/antivirus/result/g;->m(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/miui/antivirus/result/g;

    invoke-direct {v1}, Lcom/miui/antivirus/result/g;-><init>()V

    const/16 v5, 0x1c

    invoke-virtual {v1, v5}, Lcom/miui/antivirus/result/g;->k(I)V

    const v5, 0x7f121a3a

    invoke-static {v5}, Lcom/miui/antivirus/result/h;->e(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/miui/antivirus/result/g;->q(Ljava/lang/String;)V

    const v5, 0x7f1219f4

    invoke-static {v5}, Lcom/miui/antivirus/result/h;->e(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/miui/antivirus/result/g;->n(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/miui/antivirus/result/h;->e(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/antivirus/result/g;->j(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/miui/antivirus/result/g;->l(I)V

    invoke-virtual {v1, v3}, Lcom/miui/antivirus/result/g;->o(I)V

    const-string v2, "assets://img/xiezai.png"

    invoke-virtual {v1, v2}, Lcom/miui/antivirus/result/g;->m(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/miui/antivirus/result/g;

    invoke-direct {v1}, Lcom/miui/antivirus/result/g;-><init>()V

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Lcom/miui/antivirus/result/g;->k(I)V

    const v2, 0x7f120092

    invoke-static {v2}, Lcom/miui/antivirus/result/h;->e(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/antivirus/result/g;->q(Ljava/lang/String;)V

    const v2, 0x7f1218b8

    invoke-static {v2}, Lcom/miui/antivirus/result/h;->e(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/antivirus/result/g;->n(Ljava/lang/String;)V

    const v2, 0x7f120f90

    invoke-static {v2}, Lcom/miui/antivirus/result/h;->e(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/antivirus/result/g;->j(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/miui/antivirus/result/g;->l(I)V

    invoke-virtual {v1, v3}, Lcom/miui/antivirus/result/g;->o(I)V

    const-string v2, "drawable://2131232882"

    invoke-virtual {v1, v2}, Lcom/miui/antivirus/result/g;->m(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static final e(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/antivirus/result/h;->a:Lcom/miui/securitycenter/Application;

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static f(Landroid/content/Context;)I
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {p0, v1, v0, v2}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    move-result-object p0

    const-string v0, "temperature"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    div-int/lit8 p0, p0, 0xa

    return p0
.end method

.method public static g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/miui/antivirus/result/h;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lc3/f;->G(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/miui/antivirus/result/h;->c:Ljava/util/List;

    :cond_0
    sget-object v0, Lcom/miui/antivirus/result/h;->c:Ljava/util/List;

    return-object v0
.end method

.method public static h(ILjava/lang/String;)Z
    .locals 3

    const/16 v0, 0x22

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p0, v0, :cond_3

    const v0, 0x98e4a1

    if-eq p0, v0, :cond_1

    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget-boolean p0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p0

    sget-object p1, Lcom/miui/securityscan/shortcut/d$b;->d:Lcom/miui/securityscan/shortcut/d$b;

    invoke-static {p0, p1}, Lcom/miui/securityscan/shortcut/d;->q(Landroid/content/Context;Lcom/miui/securityscan/shortcut/d$b;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :pswitch_1
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/antivirus/result/h;->j(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :pswitch_2
    sget-object p0, Lcom/miui/antivirus/result/h;->b:Ljava/util/HashMap;

    new-instance p1, Ljava/lang/Integer;

    const/16 v0, 0x2b

    invoke-direct {p1, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_4

    return v2

    :pswitch_3
    sget-boolean p0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p0, :cond_4

    return v2

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v2

    :cond_2
    :try_start_0
    invoke-static {p1, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/antivirus/result/h;->k(Landroid/content/Intent;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "FunctionManager"

    const-string v0, "parseUri action failed "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2

    :cond_3
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/antivirus/result/h;->i(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    :goto_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x2a
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static i(Landroid/content/Context;)Z
    .locals 2

    invoke-static {}, Lef/d0;->a()I

    move-result p0

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p0

    invoke-static {p0}, Lc3/f;->G(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    sput-object p0, Lcom/miui/antivirus/result/h;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "appsArrayList Number"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/miui/antivirus/result/h;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v1, 0x4

    if-lt p0, v1, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static j(Landroid/content/Context;)Z
    .locals 8

    invoke-static {}, Lfe/k;->a()Lfe/k$a;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Lpf/g;->h(J)J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    const-wide/32 v3, 0x927c0

    cmp-long v3, v5, v3

    const/4 v4, 0x1

    const/4 v7, 0x0

    if-gez v3, :cond_0

    cmp-long v1, v5, v1

    if-lez v1, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v7

    :goto_0
    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lfe/k$a;->a:Z

    if-eqz v1, :cond_1

    iget v0, v0, Lfe/k$a;->b:I

    if-nez v0, :cond_1

    return v7

    :cond_1
    invoke-static {p0}, Lcom/miui/antivirus/result/h;->f(Landroid/content/Context;)I

    move-result p0

    invoke-static {}, Lgd/c;->t()I

    move-result v0

    if-ge p0, v0, :cond_2

    move v4, v7

    :cond_2
    return v4
.end method

.method public static k(Landroid/content/Intent;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-static {v1, p0, v0}, Lx4/f1;->c(Landroid/content/Context;Landroid/content/Intent;Z)Z

    move-result p0

    if-eqz p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public static l()V
    .locals 3

    sget-object v0, Lcom/miui/antivirus/result/h;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method
