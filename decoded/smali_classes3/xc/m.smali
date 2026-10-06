.class public Lxc/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxc/m$a;,
        Lxc/m$b;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lxc/m;->a:Ljava/util/Map;

    const-wide/16 v1, -0x2

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "android.permission-group.READ_MEDIA_AURAL"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v1, -0x3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "android.permission-group.READ_MEDIA_VISUAL"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)I
    .locals 4

    sget-object v0, Lxc/m$b;->b:Landroid/util/ArrayMap;

    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p3, :cond_4

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    move v1, v0

    :cond_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p0, v2, p2, p1}, Lcom/miui/permcenter/l;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    move v3, v0

    :goto_0
    add-int/2addr v1, v3

    if-lez v1, :cond_1

    const/4 p0, 0x3

    return p0

    :cond_3
    return v3

    :cond_4
    :goto_1
    return v0
.end method

.method public static b(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Lxc/m$a;
    .locals 2

    iget v0, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_0

    sget-object p0, Lxc/m$a;->a:Lxc/m$a;

    return-object p0

    :cond_0
    if-ne v0, v1, :cond_2

    const-string v0, "appops"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AppOpsManager;

    const/16 v0, 0x57

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v0, v1, p1}, Landroid/app/AppOpsManagerCompat;->checkOpNoThrow(Landroid/app/AppOpsManager;IILjava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lxc/m$a;->a:Lxc/m$a;

    return-object p0

    :cond_1
    sget-object p0, Lxc/m$a;->b:Lxc/m$a;

    return-object p0

    :cond_2
    const/16 p0, 0x21

    if-lt v0, p0, :cond_3

    sget-object p0, Lxc/m$a;->c:Lxc/m$a;

    return-object p0

    :cond_3
    sget-object p0, Lxc/m$a;->b:Lxc/m$a;

    return-object p0
.end method

.method public static c(J)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1}, Lxc/m;->d(J)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lxc/m$b;->b:Landroid/util/ArrayMap;

    sget-object v1, Lxc/m;->a:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static d(J)Z
    .locals 1

    invoke-static {}, Lcom/miui/permission/support/util/SdkLevel;->isAtLeastT()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lxc/m;->a:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static e(J)Z
    .locals 2

    invoke-static {}, Lcom/miui/permission/support/util/SdkLevel;->isAtLeastT()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide v0, 0x200000000000L

    cmp-long p0, p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static f(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 1

    sget-object v0, Lxc/m$b;->b:Landroid/util/ArrayMap;

    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, p1, p2, v0, p4}, Lxc/m;->h(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static g(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 7

    sget-object v0, Lxc/m$b;->b:Landroid/util/ArrayMap;

    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v5, p4

    move v6, p5

    invoke-static/range {v1 .. v6}, Lxc/m;->i(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static h(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq p4, v0, :cond_1

    const/4 v0, 0x3

    if-eq p4, v0, :cond_0

    const/4 v0, 0x6

    if-eq p4, v0, :cond_0

    :goto_0
    move v6, v1

    move v1, v2

    goto :goto_1

    :cond_0
    move v6, v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    :goto_1
    invoke-static {p1}, Lx4/z1;->z(I)Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    if-nez v1, :cond_2

    invoke-static {p1, p2, p3, v7}, Ltg/a;->f(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    goto :goto_2

    :cond_2
    invoke-static {p1, p2, p3, v7}, Ltg/a;->i(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    :goto_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v5, 0x3

    move-object v3, p3

    move-object v4, p2

    invoke-static/range {v2 .. v7}, Ltg/a;->j(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    return-void
.end method

.method public static i(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 6

    invoke-static {p1}, Lx4/z1;->z(I)Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-static {p1, p3, p2, v5}, Ltg/a;->e(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq p4, v1, :cond_1

    const/4 p1, 0x3

    if-eq p4, p1, :cond_0

    const/4 p1, 0x6

    if-eq p4, p1, :cond_0

    move v4, v0

    :goto_0
    move v0, v2

    goto :goto_2

    :cond_0
    move v4, v0

    goto :goto_2

    :cond_1
    if-eqz p5, :cond_2

    :goto_1
    move v4, v1

    goto :goto_0

    :cond_2
    and-int/2addr p1, v1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 p1, 0x2

    move v4, p1

    goto :goto_0

    :goto_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    if-nez v0, :cond_4

    invoke-static {p1, p2, p3, v5}, Ltg/a;->f(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    goto :goto_3

    :cond_4
    invoke-static {p1, p2, p3, v5}, Ltg/a;->i(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    :goto_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v3, 0x3

    move-object v1, p3

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Ltg/a;->j(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    return-void
.end method
