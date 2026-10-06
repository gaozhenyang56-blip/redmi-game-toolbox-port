.class Lcom/miui/idprovider/ui/legacy/OAIDAppsActivity$a;
.super Lw4/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/idprovider/ui/legacy/OAIDAppsActivity;->onCreateLoader(ILandroid/os/Bundle;)Lq0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lw4/d<",
        "Ljava/util/List<",
        "Lcom/miui/permcenter/model/a;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic q:Lcom/miui/idprovider/ui/legacy/OAIDAppsActivity;


# direct methods
.method constructor <init>(Lcom/miui/idprovider/ui/legacy/OAIDAppsActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/idprovider/ui/legacy/OAIDAppsActivity$a;->q:Lcom/miui/idprovider/ui/legacy/OAIDAppsActivity;

    invoke-direct {p0, p2}, Lw4/d;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic G()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/idprovider/ui/legacy/OAIDAppsActivity$a;->J()Ljava/util/List;

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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/miui/idprovider/ui/legacy/OAIDAppsActivity$a;->q:Lcom/miui/idprovider/ui/legacy/OAIDAppsActivity;

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

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    iget-object v3, p0, Lcom/miui/idprovider/ui/legacy/OAIDAppsActivity$a;->q:Lcom/miui/idprovider/ui/legacy/OAIDAppsActivity;

    invoke-static {v3}, Lcom/miui/idprovider/ui/legacy/OAIDAppsActivity;->f0(Lcom/miui/idprovider/ui/legacy/OAIDAppsActivity;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v5, v4

    if-nez v5, :cond_0

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Lx4/z1;->b(I)I

    move-result v3

    const/16 v5, 0x2710

    if-ge v3, v5, :cond_1

    goto :goto_0

    :cond_1
    new-instance v3, Lcom/miui/permcenter/model/a;

    invoke-direct {v3}, Lcom/miui/permcenter/model/a;-><init>()V

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/miui/permcenter/model/a;->g(Ljava/lang/String;)V

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v5}, Lcom/miui/permcenter/model/a;->h(I)V

    iget-object v5, p0, Lcom/miui/idprovider/ui/legacy/OAIDAppsActivity$a;->q:Lcom/miui/idprovider/ui/legacy/OAIDAppsActivity;

    invoke-static {v5}, Lcom/miui/idprovider/ui/legacy/OAIDAppsActivity;->g0(Lcom/miui/idprovider/ui/legacy/OAIDAppsActivity;)Landroid/app/AppOpsManager;

    move-result-object v5

    iget-object v6, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v7, 0x2735

    invoke-static {v5, v6, v2, v7}, Lcom/miui/permcenter/compact/AppOpsUtilsCompat;->checkOpNoThrow(Landroid/app/AppOpsManager;Ljava/lang/String;II)I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3, v4}, Lcom/miui/permcenter/model/a;->e(Z)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    :try_start_0
    new-instance v1, Lcom/miui/idprovider/ui/legacy/OAIDAppsActivity$b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/miui/idprovider/ui/legacy/OAIDAppsActivity$b;-><init>(Lcom/miui/idprovider/ui/legacy/OAIDAppsActivity$a;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    const-string v2, "OAIDAppsActivity"

    const-string v3, "sort error!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-object v0
.end method
