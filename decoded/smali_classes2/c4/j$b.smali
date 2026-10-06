.class Lc4/j$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc4/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field final a:Landroid/content/Context;

.field final b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc4/j$b;->a:Landroid/content/Context;

    iput-object p2, p0, Lc4/j$b;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;)Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "shortcut"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-class v1, Ljava/util/List;

    const-string v2, "getPinnedShortcuts"

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1, v1, v2, v4, v3}, Lbh/d;->b(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const-class v2, Ljava/lang/String;

    const-string v3, "getId"

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4, v5}, Lbh/d;->b(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    sget-object v3, Lcom/miui/securityscan/shortcut/d$b;->d:Lcom/miui/securityscan/shortcut/d$b;

    invoke-static {v3}, Lcom/miui/securityscan/shortcut/d;->j(Lcom/miui/securityscan/shortcut/d$b;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const-class v2, Landroid/content/Intent;

    const-string v3, "getIntent"

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4, v5}, Lbh/d;->b(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    const-string v2, "com.miui.cleanmaster"

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    :cond_3
    return v3

    :cond_4
    :goto_1
    return v0

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isInPinnedShortcutsList err:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "CleanerUtils"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v0
.end method

.method public run()V
    .locals 4

    const-class v0, Lc4/j$b;

    monitor-enter v0

    :try_start_0
    const-string v1, "CleanerUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CleanerUpdateChecker run from:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lc4/j$b;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lc4/j$b;->a:Landroid/content/Context;

    invoke-static {v1}, Lc4/j;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.miui.cleaner"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lc4/j$b;->a:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lc4/j$b;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lc4/j$b;->a:Landroid/content/Context;

    sget-object v2, Lcom/miui/securityscan/shortcut/d$b;->d:Lcom/miui/securityscan/shortcut/d$b;

    invoke-static {v1, v2}, Lcom/miui/securityscan/shortcut/b;->e(Landroid/content/Context;Lcom/miui/securityscan/shortcut/d$b;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lc4/j$b;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/securityscan/shortcut/d;->w(Landroid/content/Context;)V

    :goto_0
    iget-object v1, p0, Lc4/j$b;->a:Landroid/content/Context;

    invoke-static {v1}, Lef/x;->A(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc4/j$b;->a:Landroid/content/Context;

    invoke-static {v1}, Lc4/j;->g(Landroid/content/Context;)V

    iget-object v1, p0, Lc4/j$b;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/securityscan/shortcut/a;->g(Landroid/content/Context;)V

    iget-object v1, p0, Lc4/j$b;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lef/x;->T(Landroid/content/Context;Z)V

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
