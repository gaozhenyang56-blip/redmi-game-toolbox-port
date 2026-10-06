.class final Lcom/miui/idprovider/ui/OAIDAppSettingsActivity$b;
.super Lw4/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/idprovider/ui/OAIDAppSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lw4/d<",
        "Ljava/util/List<",
        "+",
        "Lcom/miui/permcenter/model/a;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final q:Landroid/app/AppOpsManager;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private r:Z

.field private final s:Lcom/miui/idprovider/ui/OAIDAppSettingsActivity$b$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/AppOpsManager;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/app/AppOpsManager;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lw4/d;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/idprovider/ui/OAIDAppSettingsActivity$b;->q:Landroid/app/AppOpsManager;

    new-instance p1, Lcom/miui/idprovider/ui/OAIDAppSettingsActivity$b$a;

    invoke-direct {p1}, Lcom/miui/idprovider/ui/OAIDAppSettingsActivity$b$a;-><init>()V

    iput-object p1, p0, Lcom/miui/idprovider/ui/OAIDAppSettingsActivity$b;->s:Lcom/miui/idprovider/ui/OAIDAppSettingsActivity$b$a;

    return-void
.end method


# virtual methods
.method public bridge synthetic G()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/idprovider/ui/OAIDAppSettingsActivity$b;->J()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public J()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/permcenter/model/a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lq0/c;->i()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Li4/a;->k(Landroid/content/Context;)Li4/a;

    move-result-object v1

    invoke-virtual {v1}, Li4/a;->j()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v4, 0x4

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v5, p0, Lcom/miui/idprovider/ui/OAIDAppSettingsActivity$b;->r:Z

    if-nez v5, :cond_2

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_0

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Lx4/z1;->b(I)I

    move-result v3

    const/16 v4, 0x2710

    if-ge v3, v4, :cond_2

    goto :goto_0

    :cond_2
    new-instance v3, Lcom/miui/permcenter/model/a;

    invoke-direct {v3}, Lcom/miui/permcenter/model/a;-><init>()V

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/miui/permcenter/model/a;->g(Ljava/lang/String;)V

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v4}, Lcom/miui/permcenter/model/a;->h(I)V

    iget-object v4, p0, Lcom/miui/idprovider/ui/OAIDAppSettingsActivity$b;->q:Landroid/app/AppOpsManager;

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v6, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v7, 0x2735

    invoke-static {v4, v5, v6, v7}, Lcom/miui/permcenter/compact/AppOpsUtilsCompat;->checkOpNoThrow(Landroid/app/AppOpsManager;Ljava/lang/String;II)I

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3, v4}, Lcom/miui/permcenter/model/a;->e(Z)V

    invoke-virtual {p0}, Lq0/c;->i()Landroid/content/Context;

    move-result-object v4

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v4, v2}, Lx4/f1;->P(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/miui/permcenter/model/a;->f(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    :try_start_0
    iget-object v1, p0, Lcom/miui/idprovider/ui/OAIDAppSettingsActivity$b;->s:Lcom/miui/idprovider/ui/OAIDAppSettingsActivity$b$a;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-object v0
.end method

.method public final K(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/idprovider/ui/OAIDAppSettingsActivity$b;->r:Z

    return-void
.end method
