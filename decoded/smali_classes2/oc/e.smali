.class public Loc/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Loc/e$b;,
        Loc/e$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Landroid/content/pm/PackageManager;

.field private final e:Loc/e$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Loc/e$a;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Loc/e$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Loc/e$b;)V
    .locals 0
    .param p4    # Loc/e$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Loc/e;->e:Loc/e$b;

    iput-object p1, p0, Loc/e;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Loc/e;->d:Landroid/content/pm/PackageManager;

    iput-object p2, p0, Loc/e;->b:Ljava/lang/String;

    iput-object p3, p0, Loc/e;->c:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Loc/e$a;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Loc/e;->g:Landroid/util/ArrayMap;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Loc/e$a;

    iget-object v2, p0, Loc/e;->g:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Loc/e$a;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Loc/e;->f:Ljava/util/List;

    return-void
.end method

.method private c()I
    .locals 5

    iget-object v0, p0, Loc/e;->a:Landroid/content/Context;

    invoke-static {v0}, Loc/i;->c(Landroid/content/Context;)Landroid/util/ArraySet;

    move-result-object v0

    iget-object v1, p0, Loc/e;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Loc/e$a;

    iget-object v4, p0, Loc/e;->a:Landroid/content/Context;

    invoke-static {v4, v3}, Loc/i;->j(Landroid/content/Context;Loc/e$a;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v3, v0}, Loc/i;->i(Loc/e$a;Landroid/util/ArraySet;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Loc/e$a;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method private d()I
    .locals 5

    iget-object v0, p0, Loc/e;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Loc/e$a;

    iget-object v3, p0, Loc/e;->a:Landroid/content/Context;

    invoke-virtual {v2}, Loc/e$a;->g()Loc/a;

    move-result-object v4

    invoke-static {v3, v4}, Loc/i;->k(Landroid/content/Context;Loc/a;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v2}, Loc/e$a;->a(Loc/e$a;)Loc/a;

    move-result-object v3

    invoke-static {v3}, Loc/i;->f(Loc/a;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Loc/e$a;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method private e(Landroid/os/UserHandle;)Ljava/util/List;
    .locals 6
    .param p1    # Landroid/os/UserHandle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Loc/e;->e:Loc/e$b;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Loc/e;->i(Landroid/os/UserHandle;)I

    move-result v1

    invoke-virtual {v0, v1}, Loc/e$b;->a(I)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-object p1, p0, Loc/e;->c:Ljava/lang/String;

    if-eqz p1, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p1, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    iget-object v4, p0, Loc/e;->c:Ljava/lang/String;

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-object v0

    :cond_3
    iget-object v0, p0, Loc/e;->c:Ljava/lang/String;

    const/16 v2, 0x1000

    if-nez v0, :cond_4

    iget-object v0, p0, Loc/e;->d:Landroid/content/pm/PackageManager;

    invoke-direct {p0, p1}, Loc/e;->i(Landroid/os/UserHandle;)I

    move-result p1

    invoke-static {v0, v2, p1}, Loc/g$c;->a(Landroid/content/pm/PackageManager;II)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_4
    :try_start_0
    iget-object p1, p0, Loc/e;->d:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private i(Landroid/os/UserHandle;)I
    .locals 3

    const-string v0, ""

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "UserHandle{"

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "}"

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return v1
.end method

.method private j()Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Loc/e$a;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Loc/e;->b:Ljava/lang/String;

    iget-object v2, v0, Loc/e;->a:Landroid/content/Context;

    invoke-static {v1, v2}, Loc/i;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/content/pm/PackageItemInfo;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    :cond_0
    iget-object v2, v0, Loc/e;->b:Ljava/lang/String;

    iget-object v3, v0, Loc/e;->a:Landroid/content/Context;

    invoke-static {v2, v3}, Loc/i;->b(Ljava/lang/String;Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PermissionInfo;

    iget v7, v6, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 v7, v7, 0xf

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    iget v7, v6, Landroid/content/pm/PermissionInfo;->flags:I

    const/high16 v8, 0x40000000    # 2.0f

    and-int/2addr v8, v7

    if-eqz v8, :cond_2

    and-int/lit8 v7, v7, 0x2

    if-nez v7, :cond_2

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, v0, Loc/e;->a:Landroid/content/Context;

    const-class v7, Landroid/os/UserManager;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserManager;

    invoke-virtual {v6}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/UserHandle;

    invoke-direct {v0, v7}, Loc/e;->e(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_4

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/PackageInfo;

    iget-object v11, v10, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez v11, :cond_5

    goto :goto_4

    :cond_5
    const/4 v11, 0x0

    :goto_2
    iget-object v12, v10, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v13, v12

    if-ge v11, v13, :cond_a

    aget-object v12, v12, v11

    const/4 v13, 0x0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_6
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/PermissionInfo;

    iget-object v4, v15, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    move-object v13, v15

    :cond_7
    if-nez v13, :cond_8

    goto :goto_3

    :cond_8
    iget-object v4, v0, Loc/e;->a:Landroid/content/Context;

    invoke-static {v4, v10, v1, v2}, Loc/a;->e(Landroid/content/Context;Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageItemInfo;Ljava/util/List;)Loc/a;

    move-result-object v4

    if-nez v4, :cond_9

    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_9
    new-instance v11, Loc/e$a;

    iget-object v12, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v10, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v11, v12, v4, v10}, Loc/e$a;-><init>(Ljava/lang/String;Loc/a;Landroid/content/pm/ApplicationInfo;)V

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_b
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v5
.end method


# virtual methods
.method public b()I
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Loc/e;->d()I

    move-result v0

    return v0

    :cond_0
    invoke-direct {p0}, Loc/e;->c()I

    move-result v0

    return v0
.end method

.method public f()I
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Loc/e;->h()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Loc/e;->g()I

    move-result v0

    return v0
.end method

.method public g()I
    .locals 5

    iget-object v0, p0, Loc/e;->a:Landroid/content/Context;

    invoke-static {v0}, Loc/i;->c(Landroid/content/Context;)Landroid/util/ArraySet;

    move-result-object v0

    iget-object v1, p0, Loc/e;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Loc/e$a;

    iget-object v4, p0, Loc/e;->a:Landroid/content/Context;

    invoke-static {v4, v3}, Loc/i;->j(Landroid/content/Context;Loc/e$a;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v3, v0}, Loc/i;->i(Loc/e$a;Landroid/util/ArraySet;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public h()I
    .locals 5

    iget-object v0, p0, Loc/e;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Loc/e$a;

    iget-object v3, p0, Loc/e;->a:Landroid/content/Context;

    invoke-virtual {v2}, Loc/e$a;->g()Loc/a;

    move-result-object v4

    invoke-static {v3, v4}, Loc/i;->k(Landroid/content/Context;Loc/a;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v2}, Loc/e$a;->a(Loc/e$a;)Loc/a;

    move-result-object v2

    invoke-static {v2}, Loc/i;->f(Loc/a;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public k(Z)V
    .locals 0

    invoke-direct {p0}, Loc/e;->j()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Loc/e;->a(Ljava/util/List;)V

    return-void
.end method
