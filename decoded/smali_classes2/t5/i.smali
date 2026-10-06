.class public Lt5/i;
.super Landroidx/viewpager/widget/a;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/miui/gamebooster/model/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt5/i$b;,
        Lt5/i$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lt5/i$b;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/gamebooster/model/c;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;

.field private d:Lt5/i$a;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/os/Handler;

.field private final h:Z

.field private final i:I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field private final j:Z

.field private final k:Lrh/c;

.field private l:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lt5/i$a;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/viewpager/widget/a;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lt5/i;->e:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lt5/i;->f:Ljava/util/Map;

    const/4 v0, 0x0

    iput v0, p0, Lt5/i;->l:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lt5/i;->c:Landroid/content/Context;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lt5/i;->a:Ljava/util/HashMap;

    iput-object p2, p0, Lt5/i;->d:Lt5/i$a;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lt5/i;->g:Landroid/os/Handler;

    invoke-static {}, Lg7/a;->b()Z

    move-result p1

    iput-boolean p1, p0, Lt5/i;->h:Z

    if-eqz p1, :cond_0

    const p1, 0x7f0806b5

    goto :goto_0

    :cond_0
    const p1, 0x7f0806b4

    :goto_0
    iput p1, p0, Lt5/i;->i:I

    invoke-static {}, La8/k2;->A()Z

    move-result p2

    iput-boolean p2, p0, Lt5/i;->j:Z

    invoke-direct {p0, p1}, Lt5/i;->g(I)Lrh/c;

    move-result-object p1

    iput-object p1, p0, Lt5/i;->k:Lrh/c;

    return-void
.end method

.method private A(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Lx4/z1;->m(I)I

    move-result v0

    const/16 v1, 0x3e7

    if-ne v0, v1, :cond_1

    const-string v0, "pkg_icon_xspace://"

    goto :goto_0

    :cond_1
    const-string v0, "pkg_icon://"

    :goto_0
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private C(Ljava/lang/Object;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lt5/i;->e:Ljava/util/Map;

    check-cast p1, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object p1, p0, Lt5/i;->c:Landroid/content/Context;

    iget-object v0, p0, Lt5/i;->e:Ljava/util/Map;

    invoke-static {p1, v0}, Lt5/i;->D(Landroid/content/Context;Ljava/util/Map;)V

    iget-object p1, p0, Lt5/i;->e:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lt5/i;->G(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lc7/b;->b(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private static D(Landroid/content/Context;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {p1}, Lx4/l0;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "game_boost_app_urls"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static E(Lt5/i$b;Z)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    iget-object v2, p0, Lt5/i$b;->b:Landroid/view/View;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lt5/i$b;->d:Landroid/view/View;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object p0, p0, Lt5/i$b;->a:Landroid/view/View;

    aput-object p0, v0, v1

    invoke-static {p1, v0}, Lc7/c;->g(Z[Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lt5/i;I)V
    .locals 0

    invoke-direct {p0, p1}, Lt5/i;->s(I)V

    return-void
.end method

.method public static synthetic c(Lt5/i;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lt5/i;->u(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic d(Lt5/i;Lcom/miui/gamebooster/model/c;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lt5/i;->q(Lcom/miui/gamebooster/model/c;I)V

    return-void
.end method

.method public static synthetic e(Lt5/i;I)V
    .locals 0

    invoke-direct {p0, p1}, Lt5/i;->r(I)V

    return-void
.end method

.method public static synthetic f(Lt5/i;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lt5/i;->t(Landroid/widget/ImageView;Ljava/lang/String;)V

    return-void
.end method

.method private g(I)Lrh/c;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    new-instance v0, Lrh/c$b;

    invoke-direct {v0}, Lrh/c$b;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lrh/c$b;->x(Z)Lrh/c$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lrh/c$b;->y(Z)Lrh/c$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lrh/c$b;->A(Z)Lrh/c$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrh/c$b;->I(I)Lrh/c$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrh/c$b;->G(I)Lrh/c$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrh/c$b;->H(I)Lrh/c$b;

    move-result-object p1

    invoke-virtual {p1}, Lrh/c$b;->w()Lrh/c;

    move-result-object p1

    return-object p1
.end method

.method private static k(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "game_boost_app_urls"

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private m(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private o(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private p(Lt5/i$a;ZI)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p1, p3}, Lt5/i$a;->o(I)V

    goto :goto_0

    :cond_1
    invoke-interface {p1, p3}, Lt5/i$a;->B(I)V

    :goto_0
    return-void
.end method

.method private synthetic q(Lcom/miui/gamebooster/model/c;I)V
    .locals 2

    iget-object v0, p0, Lt5/i;->d:Lt5/i$a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, v1}, Lt5/i$a;->K(Lcom/miui/gamebooster/model/c;IZ)V

    return-void
.end method

.method private synthetic r(I)V
    .locals 2

    iget-object v0, p0, Lt5/i;->d:Lt5/i$a;

    iget-boolean v1, p0, Lt5/i;->j:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lt5/i;->p(Lt5/i$a;ZI)V

    return-void
.end method

.method private synthetic s(I)V
    .locals 2

    iget-object v0, p0, Lt5/i;->d:Lt5/i$a;

    iget-boolean v1, p0, Lt5/i;->j:Z

    invoke-direct {p0, v0, v1, p1}, Lt5/i;->p(Lt5/i$a;ZI)V

    return-void
.end method

.method private synthetic t(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    sget-object v0, Lx4/o0;->f:Lrh/c;

    iget-object v1, p0, Lt5/i;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lt5/i;->i:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p2, p1, v0, v1}, Lx4/o0;->f(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private synthetic u(Ljava/util/List;)V
    .locals 3

    invoke-static {p1}, Lg7/a;->c(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc7/b;->a(Ljava/lang/Object;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-class v0, Lg7/b;

    invoke-static {p1, v0}, Lx4/l0;->c(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg7/b;

    :try_start_0
    invoke-virtual {p1}, Lg7/b;->a()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v2, 0x81

    iput v2, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lt5/i;->g:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    move v1, p1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {p1}, Lc7/b;->b(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    invoke-static {}, Lb7/c;->e()V

    :cond_1
    return-void
.end method

.method private v(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Ljava/lang/Runnable;)V
    .locals 2
    .param p4    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "AppStore"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string p2, "https://t14.market.mi-img.com/download/%s/a.jpg"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-static {p2}, Lc7/b;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lt5/i;->k:Lrh/c;

    invoke-static {p1, p2, p3, v0, p4}, Lcom/miui/gamebooster/globalgame/present/b;->f(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;Ljava/lang/Runnable;)V

    return-void
.end method

.method private w(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lt5/h;

    invoke-direct {v0, p0, p1, p3}, Lt5/h;-><init>(Lt5/i;Landroid/widget/ImageView;Ljava/lang/String;)V

    iget-object p3, p0, Lt5/i;->e:Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lt5/i;->c:Landroid/content/Context;

    invoke-static {p3}, Lt5/i;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lx4/l0;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lt5/i;->e:Ljava/util/Map;

    invoke-interface {v1, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    iget-object p3, p0, Lt5/i;->e:Ljava/util/Map;

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_2

    invoke-direct {p0}, Lt5/i;->x()Z

    move-result p3

    if-nez p3, :cond_2

    iget-boolean p3, p0, Lt5/i;->h:Z

    if-eqz p3, :cond_1

    sget-object p3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    goto :goto_0

    :cond_1
    sget-object p3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    :goto_0
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object p3, p0, Lt5/i;->c:Landroid/content/Context;

    iget-object v1, p0, Lt5/i;->e:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p3, p2, p1, v0}, Lt5/i;->v(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_1
    return-void
.end method

.method private x()Z
    .locals 1

    invoke-static {}, Lef/x;->z()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private y(I)Z
    .locals 2

    iget-object v0, p0, Lt5/i;->b:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_1

    iget-object v0, p0, Lt5/i;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lt5/i;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/model/c;

    invoke-virtual {v0}, Lcom/miui/gamebooster/model/d;->a()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lt5/i;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/gamebooster/model/c;

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/d;->a()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public static z(Lt5/i$b;)Landroid/widget/ImageView;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lt5/i$b;->c:Landroid/widget/ImageView;

    return-object p0
.end method


# virtual methods
.method public B(I)Lt5/i$b;
    .locals 2

    invoke-direct {p0, p1}, Lt5/i;->y(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lt5/i;->a:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lt5/i;->a:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Lt5/i$b;

    return-object p1

    :cond_0
    return-object v1

    :cond_1
    iget-object v0, p0, Lt5/i;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/gamebooster/model/c;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lt5/i;->a:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/d;->a()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lt5/i;->m(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public F(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/gamebooster/model/c;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lt5/i;->b:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gamebooster/model/c;

    invoke-virtual {v1}, Lcom/miui/gamebooster/model/d;->a()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v2}, Lt5/i;->m(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lt5/i;->f:Ljava/util/Map;

    invoke-direct {p0, v2}, Lt5/i;->A(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lt5/i;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lt5/i;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lt5/i;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lt5/i;->l:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "in Adapter of position: Str 0,data:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lt5/i;->b:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc7/b;->c(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/viewpager/widget/a;->notifyDataSetChanged()V

    invoke-direct {p0}, Lt5/i;->x()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    new-instance p1, Lt5/g;

    invoke-direct {p1, p0, v0}, Lt5/g;-><init>(Lt5/i;Ljava/util/List;)V

    invoke-static {p1}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public G(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lt5/i;->a:Ljava/util/HashMap;

    invoke-static {v0}, Lc7/c;->o(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lt5/i;->x()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lt5/i;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lt5/i;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lt5/i;->a:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lt5/i$b;

    invoke-static {v3}, Lt5/i;->z(Lt5/i$b;)Landroid/widget/ImageView;

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lt5/i;->f:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lt5/i;->f:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_5

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lt5/i;->f:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v3, v2, v1}, Lt5/i;->w(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    return-void
.end method

.method public a()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lt5/i;->d:Lt5/i$a;

    iget-object v1, p0, Lt5/i;->g:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lt5/i;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lt5/i;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt5/i$b;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lt5/i$b;->c:Landroid/widget/ImageView;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lc7/c;->D(Landroid/widget/ImageView;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lt5/i;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    instance-of p1, p3, Landroid/view/View;

    if-nez p1, :cond_0

    return-void

    :cond_0
    check-cast p3, Landroid/view/View;

    instance-of p1, p3, Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    move-object p1, p3

    check-cast p1, Landroid/widget/ImageView;

    invoke-static {p1}, Lc7/c;->D(Landroid/widget/ImageView;)V

    goto :goto_0

    :cond_1
    instance-of p1, p3, Landroid/view/ViewGroup;

    if-eqz p1, :cond_2

    move-object p1, p3

    check-cast p1, Landroid/view/ViewGroup;

    invoke-static {p1}, Lc7/c;->C(Landroid/view/ViewGroup;)V

    :cond_2
    :goto_0
    invoke-static {p3}, Lc7/c;->E(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lt5/i;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, -0x2

    return p1
.end method

.method public h(I)Lcom/miui/gamebooster/model/c;
    .locals 1

    iget-object v0, p0, Lt5/i;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lt5/i;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/gamebooster/model/c;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x81

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, p1}, Lt5/i;->C(Ljava/lang/Object;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/gamebooster/model/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lt5/i;->b:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 6

    invoke-direct {p0, p2}, Lt5/i;->y(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lt5/i;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt5/i$b;

    move-object v2, v0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lt5/i;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/model/c;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/miui/gamebooster/model/d;->a()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lt5/i;->m(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lt5/i;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lt5/i;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lt5/i$b;

    goto :goto_0

    :cond_1
    move-object v2, v1

    goto :goto_0

    :cond_2
    move-object v0, v1

    move-object v2, v0

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "in Adapter of position:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",pkgName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",data:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lt5/i;->b:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lc7/b;->c(Ljava/lang/Object;)V

    const/4 v3, 0x0

    if-nez v2, :cond_3

    iget-object v2, p0, Lt5/i;->c:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v4, 0x7f0e01ea

    invoke-virtual {v2, v4, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    new-instance v4, Lt5/i$b;

    invoke-direct {v4}, Lt5/i$b;-><init>()V

    invoke-virtual {v4, v2}, Lt5/i$b;->a(Landroid/view/View;)Lt5/i$b;

    move-result-object v2

    iget-object v4, v2, Lt5/i$b;->a:Landroid/view/View;

    iget-object v5, v2, Lt5/i$b;->c:Landroid/widget/ImageView;

    invoke-static {v4, v5}, Ll8/c;->i(Landroid/view/View;Landroid/view/View;)V

    iget-object v4, p0, Lt5/i;->a:Ljava/util/HashMap;

    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v4, v2, Lt5/i$b;->a:Landroid/view/View;

    invoke-static {v4}, Lc7/c;->E(Landroid/view/View;)V

    iget-object v4, v2, Lt5/i$b;->a:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, v2, Lt5/i$b;->c:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lt5/i;->h:Z

    if-eqz v0, :cond_4

    const v0, 0x7f080672

    goto :goto_1

    :cond_4
    const v0, 0x7f080671

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lt5/i;->b:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/miui/gamebooster/model/c;

    invoke-virtual {v1}, Lcom/miui/gamebooster/model/d;->a()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object v0, v2, Lt5/i$b;->c:Landroid/widget/ImageView;

    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lt5/i;->A(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v4, p1}, Lt5/i;->w(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    new-instance p1, Lt5/d;

    invoke-direct {p1, p0, v1, p2}, Lt5/d;-><init>(Lt5/i;Lcom/miui/gamebooster/model/c;I)V

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/view/View;

    iget-object v4, v2, Lt5/i$b;->c:Landroid/widget/ImageView;

    aput-object v4, v1, v3

    invoke-static {p1, v1}, Lc7/c;->I(Ljava/lang/Runnable;[Landroid/view/View;)V

    new-instance p1, Lt5/e;

    invoke-direct {p1, p0, p2}, Lt5/e;-><init>(Lt5/i;I)V

    new-array v1, v0, [Landroid/view/View;

    iget-object v4, v2, Lt5/i$b;->b:Landroid/view/View;

    aput-object v4, v1, v3

    invoke-static {p1, v1}, Lc7/c;->I(Ljava/lang/Runnable;[Landroid/view/View;)V

    new-instance p1, Lt5/f;

    invoke-direct {p1, p0, p2}, Lt5/f;-><init>(Lt5/i;I)V

    new-array p2, v0, [Landroid/view/View;

    iget-object v0, v2, Lt5/i$b;->d:Landroid/view/View;

    aput-object v0, p2, v3

    invoke-static {p1, p2}, Lc7/c;->I(Ljava/lang/Runnable;[Landroid/view/View;)V

    iget-object p1, v2, Lt5/i$b;->a:Landroid/view/View;

    return-object p1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public j(I)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lt5/i;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_1

    iget-object v0, p0, Lt5/i;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lt5/i;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/gamebooster/model/c;

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/d;->c()Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public l(I)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lt5/i;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_1

    iget-object v0, p0, Lt5/i;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lt5/i;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/model/c;

    invoke-virtual {v0}, Lcom/miui/gamebooster/model/d;->a()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lt5/i;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/gamebooster/model/c;

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/d;->a()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lt5/i;->m(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public n(Ljava/lang/String;)I
    .locals 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lt5/i;->b:Ljava/util/List;

    invoke-static {v0}, Lc7/c;->n(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const-string v0, "add_game_fake_pkg_name"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget p1, p0, Lt5/i;->l:I

    return p1

    :cond_2
    iget-object v0, p0, Lt5/i;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_5

    iget-object v3, p0, Lt5/i;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gamebooster/model/d;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/miui/gamebooster/model/d;->a()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Lcom/miui/gamebooster/model/d;->c()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Lcom/miui/gamebooster/model/d;->a()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-direct {p0, v3}, Lt5/i;->m(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    return v2

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return v1
.end method
