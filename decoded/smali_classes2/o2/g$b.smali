.class Lo2/g$b;
.super Lcom/miui/guardprovider/VirusObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo2/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic l:Lo2/g;


# direct methods
.method constructor <init>(Lo2/g;)V
    .locals 0

    iput-object p1, p0, Lo2/g$b;->l:Lo2/g;

    invoke-direct {p0}, Lcom/miui/guardprovider/VirusObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public Z0(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/guardprovider/VirusObserver;->Z0(I)V

    iget-object p1, p0, Lo2/g$b;->l:Lo2/g;

    invoke-static {}, Lw2/t;->u()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, v0}, Lo2/g;->b(Lo2/g;Ljava/util/List;)Ljava/util/List;

    return-void
.end method

.method public b7(I[Lcom/miui/guardprovider/aidl/VirusInfo;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/guardprovider/VirusObserver;->k:Lo2/g$h;

    invoke-interface {p1}, Lo2/g$h;->c()V

    return-void
.end method

.method public q7(II[Lcom/miui/guardprovider/aidl/VirusInfo;)V
    .locals 11

    const/4 p1, 0x0

    aget-object v0, p3, p1

    iget p2, v0, Lcom/miui/guardprovider/aidl/VirusInfo;->virusLevel:I

    invoke-static {p2}, Lw2/v;->a(I)Lo2/g$l;

    move-result-object p2

    sget-object p3, Lo2/g$l;->a:Lo2/g$l;

    if-eq p2, p3, :cond_2

    iget-object p2, p0, Lo2/g$b;->l:Lo2/g;

    invoke-static {p2}, Lo2/g;->d(Lo2/g;)Landroid/content/Context;

    move-result-object p2

    iget-object p3, v0, Lcom/miui/guardprovider/aidl/VirusInfo;->packageName:Ljava/lang/String;

    invoke-static {p2, p3}, Le3/b;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "background scan : virus risk = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, v0, Lcom/miui/guardprovider/aidl/VirusInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "; virusLevel = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, v0, Lcom/miui/guardprovider/aidl/VirusInfo;->virusLevel:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "PaySafetyCheckManager"

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lo2/g$b;->l:Lo2/g;

    invoke-static {p2}, Lo2/g;->a(Lo2/g;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/miui/guardprovider/VirusObserver;->k:Lo2/g$h;

    const/4 p3, 0x4

    invoke-interface {p2, p3}, Lo2/g$h;->e(I)V

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not report because installer is in white list! installer = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p2

    :try_start_0
    iget v1, v0, Lcom/miui/guardprovider/aidl/VirusInfo;->virusLevel:I

    invoke-static {v1}, Lw2/v;->b(I)Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lo2/g$b;->l:Lo2/g;

    invoke-static {v1}, Lo2/g;->d(Lo2/g;)Landroid/content/Context;

    move-result-object v1

    iget-object v4, v0, Lcom/miui/guardprovider/aidl/VirusInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v4}, Lw2/p;->h(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lo2/g$b;->l:Lo2/g;

    invoke-static {v1}, Lo2/g;->j(Lo2/g;)Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v5, v0, Lcom/miui/guardprovider/aidl/VirusInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v5, p1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v5, p0, Lo2/g$b;->l:Lo2/g;

    invoke-static {v5}, Lo2/g;->j(Lo2/g;)Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lw2/t;->A()Z

    move-result v5

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    const v9, 0x7f1213f5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lo2/g$b;->l:Lo2/g;

    invoke-static {v5}, Lo2/g;->d(Lo2/g;)Landroid/content/Context;

    move-result-object v5

    new-array v8, v8, [Ljava/lang/Object;

    const-string v10, "all"

    aput-object v10, v8, p1

    invoke-virtual {v5, v9, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-static {p1, v6, v7}, Lr4/a;->j(Ljava/lang/String;J)J

    move-result-wide v5

    goto :goto_2

    :cond_1
    iget-object v5, p0, Lo2/g$b;->l:Lo2/g;

    invoke-static {v5}, Lo2/g;->d(Lo2/g;)Landroid/content/Context;

    move-result-object v5

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v10, v0, Lcom/miui/guardprovider/aidl/VirusInfo;->engineName:Ljava/lang/String;

    aput-object v10, v8, p1

    invoke-virtual {v5, v9, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :goto_2
    const-string p1, "yyyy-MM-dd"

    invoke-static {p1, v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SECURITY_SCAN_BACKGROUND"

    iget-object v7, v0, Lcom/miui/guardprovider/aidl/VirusInfo;->virusName:Ljava/lang/String;

    iget-object v8, v0, Lcom/miui/guardprovider/aidl/VirusInfo;->versionName:Ljava/lang/String;

    invoke-static/range {v0 .. v8}, Lq2/b;->d(Lcom/miui/guardprovider/aidl/VirusInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_5

    :goto_4
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    :cond_2
    :goto_5
    return-void
.end method
