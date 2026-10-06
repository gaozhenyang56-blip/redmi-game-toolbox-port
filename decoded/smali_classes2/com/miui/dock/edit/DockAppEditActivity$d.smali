.class public Lcom/miui/dock/edit/DockAppEditActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/dock/edit/DockAppEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/dock/edit/DockAppEditActivity;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/miui/dock/edit/DockAppEditActivity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/dock/edit/DockAppEditActivity$d;->a:Ljava/lang/ref/WeakReference;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/dock/edit/DockAppEditActivity$d;->b:Z

    return-void
.end method

.method public static synthetic a(Lcom/miui/dock/edit/DockAppEditActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/dock/edit/DockAppEditActivity$d;->m(Lcom/miui/dock/edit/DockAppEditActivity;)V

    return-void
.end method

.method public static synthetic b(Lcom/miui/dock/edit/DockAppEditActivity;Landroid/content/pm/PackageInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/dock/edit/DockAppEditActivity$d;->h(Lcom/miui/dock/edit/DockAppEditActivity;Landroid/content/pm/PackageInfo;)V

    return-void
.end method

.method public static synthetic c(Lcom/miui/dock/edit/DockAppEditActivity;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/dock/edit/DockAppEditActivity$d;->j(Lcom/miui/dock/edit/DockAppEditActivity;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic d(Lcom/miui/dock/edit/DockAppEditActivity;Landroid/content/pm/PackageInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/dock/edit/DockAppEditActivity$d;->i(Lcom/miui/dock/edit/DockAppEditActivity;Landroid/content/pm/PackageInfo;)V

    return-void
.end method

.method public static synthetic e(Lcom/miui/dock/edit/DockAppEditActivity;Li5/c;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/dock/edit/DockAppEditActivity$d;->k(Lcom/miui/dock/edit/DockAppEditActivity;Li5/c;)V

    return-void
.end method

.method public static synthetic f(Lcom/miui/dock/edit/DockAppEditActivity;Landroid/content/pm/PackageInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/dock/edit/DockAppEditActivity$d;->l(Lcom/miui/dock/edit/DockAppEditActivity;Landroid/content/pm/PackageInfo;)V

    return-void
.end method

.method static synthetic g(Lcom/miui/dock/edit/DockAppEditActivity$d;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/dock/edit/DockAppEditActivity$d;->b:Z

    return p1
.end method

.method private static synthetic h(Lcom/miui/dock/edit/DockAppEditActivity;Landroid/content/pm/PackageInfo;)V
    .locals 1

    new-instance v0, Lg5/c;

    invoke-direct {v0, p1}, Lg5/c;-><init>(Landroid/content/pm/PackageInfo;)V

    invoke-virtual {p0, v0}, Lcom/miui/dock/edit/DockAppEditActivity;->y0(Lg5/j;)V

    return-void
.end method

.method private static synthetic i(Lcom/miui/dock/edit/DockAppEditActivity;Landroid/content/pm/PackageInfo;)V
    .locals 1

    new-instance v0, Lg5/c;

    invoke-direct {v0, p1}, Lg5/c;-><init>(Landroid/content/pm/PackageInfo;)V

    invoke-virtual {p0, v0}, Lcom/miui/dock/edit/DockAppEditActivity;->y0(Lg5/j;)V

    return-void
.end method

.method private static synthetic j(Lcom/miui/dock/edit/DockAppEditActivity;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/dock/edit/DockAppEditActivity;->w0(Ljava/util/List;)V

    return-void
.end method

.method private static synthetic k(Lcom/miui/dock/edit/DockAppEditActivity;Li5/c;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/dock/edit/DockAppEditActivity;->x0(Lg5/j;)V

    return-void
.end method

.method private static synthetic l(Lcom/miui/dock/edit/DockAppEditActivity;Landroid/content/pm/PackageInfo;)V
    .locals 1

    new-instance v0, Lg5/c;

    invoke-direct {v0, p1}, Lg5/c;-><init>(Landroid/content/pm/PackageInfo;)V

    invoke-virtual {p0, v0}, Lcom/miui/dock/edit/DockAppEditActivity;->x0(Lg5/j;)V

    return-void
.end method

.method private static synthetic m(Lcom/miui/dock/edit/DockAppEditActivity;)V
    .locals 3

    sget-boolean v0, Lsl/a;->a:Z

    if-nez v0, :cond_0

    new-instance v0, Lg5/h;

    const v1, 0x7f120b49

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lg5/h$a;->b:Lg5/h$a;

    invoke-direct {v0, v1, v2}, Lg5/h;-><init>(Ljava/lang/String;Lg5/h$a;)V

    invoke-virtual {p0, v0}, Lcom/miui/dock/edit/DockAppEditActivity;->y0(Lg5/j;)V

    :cond_0
    return-void
.end method

.method private n(Ljava/util/List;Landroid/content/pm/PackageManager;Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/pm/PackageManager;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/dock/edit/DockAppEditActivity$d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/dock/edit/DockAppEditActivity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-boolean v4, p0, Lcom/miui/dock/edit/DockAppEditActivity$d;->b:Z

    if-eqz v4, :cond_2

    return-void

    :cond_2
    invoke-static {p2, v3}, Lcom/miui/common/g;->c(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v4

    invoke-interface {p3, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v1, v3, v2}, Lx4/f1;->e(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-static {v1, v3}, Lx4/f1;->n(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v5

    new-instance v6, Lf5/q;

    invoke-direct {v6, v0, v5}, Lf5/q;-><init>(Lcom/miui/dock/edit/DockAppEditActivity;Landroid/content/pm/PackageInfo;)V

    invoke-virtual {v0, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_3
    if-eqz v4, :cond_1

    invoke-interface {p4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const/16 v4, 0x3e7

    invoke-static {v1, v3, v2, v4}, Lx4/f1;->Q(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/PackageManager;I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    invoke-static {v3, v5, v4}, Ltg/a;->d(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v3

    new-instance v4, Lf5/r;

    invoke-direct {v4, v0, v3}, Lf5/r;-><init>(Lcom/miui/dock/edit/DockAppEditActivity;Landroid/content/pm/PackageInfo;)V

    invoke-virtual {v0, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method private o(Ljava/util/List;Landroid/content/pm/PackageManager;Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/pm/PackageManager;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/dock/edit/DockAppEditActivity$d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/dock/edit/DockAppEditActivity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-boolean v5, p0, Lcom/miui/dock/edit/DockAppEditActivity$d;->b:Z

    if-eqz v5, :cond_2

    return-void

    :cond_2
    invoke-static {p2, v4}, Lcom/miui/common/g;->c(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v5

    invoke-interface {p3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {v1, v4, v2}, Lx4/f1;->e(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-static {v1, v4}, Lx4/f1;->n(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v6

    new-instance v7, Lg5/c;

    invoke-direct {v7, v6}, Lg5/c;-><init>(Landroid/content/pm/PackageInfo;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz v5, :cond_1

    invoke-interface {p4, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const/16 v5, 0x3e7

    invoke-static {v1, v4, v2, v5}, Lx4/f1;->Q(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/PackageManager;I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    if-eqz v6, :cond_1

    const/4 v6, 0x0

    invoke-static {v4, v6, v5}, Ltg/a;->d(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v4

    new-instance v5, Lg5/c;

    invoke-direct {v5, v4}, Lg5/c;-><init>(Landroid/content/pm/PackageInfo;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {v0, v3}, Lcom/miui/dock/edit/DockAppEditActivity;->A0(Ljava/util/List;)V

    new-instance p1, Lf5/p;

    invoke-direct {p1, v0, v3}, Lf5/p;-><init>(Lcom/miui/dock/edit/DockAppEditActivity;Ljava/util/List;)V

    invoke-virtual {v0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lf7/b;->q(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    const-string v2, "DockEditPage"

    if-nez v1, :cond_0

    const-string v0, "load app from freefrom error!!!"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {v0}, Lf5/v;->h(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/16 v5, 0x3e7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    if-eqz v4, :cond_1

    invoke-interface {v6, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v7, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Lk5/a;->p()Ljava/util/List;

    move-result-object v4

    iget-object v8, p0, Lcom/miui/dock/edit/DockAppEditActivity$d;->a:Ljava/lang/ref/WeakReference;

    if-nez v8, :cond_3

    return-void

    :cond_3
    invoke-virtual {v8}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/dock/edit/DockAppEditActivity;

    if-nez v8, :cond_4

    return-void

    :cond_4
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    iget-boolean v10, p0, Lcom/miui/dock/edit/DockAppEditActivity$d;->b:Z

    if-eqz v10, :cond_6

    return-void

    :cond_6
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_7

    goto :goto_0

    :cond_7
    invoke-static {v9}, Lm5/c;->a(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    :try_start_0
    new-instance v10, Li5/a;

    invoke-direct {v10}, Li5/a;-><init>()V

    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Li5/a;->a(Lorg/json/JSONObject;)V

    invoke-static {v10}, Li5/c;->d(Li5/a;)Li5/c;

    move-result-object v9

    new-instance v10, Lf5/l;

    invoke-direct {v10, v8, v9}, Lf5/l;-><init>(Lcom/miui/dock/edit/DockAppEditActivity;Li5/c;)V

    invoke-virtual {v8, v10}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "generate quickInfo error "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_8
    const-string v10, ",,"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    array-length v10, v9

    if-nez v10, :cond_9

    goto :goto_0

    :cond_9
    aget-object v10, v9, v3

    array-length v11, v9

    const/4 v12, 0x2

    const/4 v13, -0x1

    if-ne v11, v12, :cond_a

    const/4 v11, 0x1

    :try_start_1
    aget-object v9, v9, v11

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    :cond_a
    move v9, v13

    :goto_1
    invoke-static {}, Lx4/z1;->y()I

    move-result v11

    if-eq v9, v13, :cond_c

    invoke-static {v9}, Lx4/z1;->m(I)I

    move-result v9

    if-ne v9, v5, :cond_c

    invoke-interface {v7, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    goto :goto_0

    :cond_b
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v11, v5

    goto :goto_2

    :cond_c
    invoke-interface {v6, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    goto/16 :goto_0

    :cond_d
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    invoke-static {v10, v3, v11}, Ltg/a;->d(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v9

    if-nez v9, :cond_e

    goto/16 :goto_0

    :cond_e
    new-instance v10, Lf5/m;

    invoke-direct {v10, v8, v9}, Lf5/m;-><init>(Lcom/miui/dock/edit/DockAppEditActivity;Landroid/content/pm/PackageInfo;)V

    invoke-virtual {v8, v10}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_f
    new-instance v2, Lf5/n;

    invoke-direct {v2, v8}, Lf5/n;-><init>(Lcom/miui/dock/edit/DockAppEditActivity;)V

    invoke-virtual {v8, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    sget-boolean v2, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v2, :cond_10

    invoke-direct {p0, v1, v0, v6, v7}, Lcom/miui/dock/edit/DockAppEditActivity$d;->o(Ljava/util/List;Landroid/content/pm/PackageManager;Ljava/util/List;Ljava/util/List;)V

    goto :goto_3

    :cond_10
    invoke-direct {p0, v1, v0, v6, v7}, Lcom/miui/dock/edit/DockAppEditActivity$d;->n(Ljava/util/List;Landroid/content/pm/PackageManager;Ljava/util/List;Ljava/util/List;)V

    :goto_3
    new-instance v0, Lf5/o;

    invoke-direct {v0, v8}, Lf5/o;-><init>(Lcom/miui/dock/edit/DockAppEditActivity;)V

    invoke-virtual {v8, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
