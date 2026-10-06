.class public Lcom/miui/common/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/content/res/Configuration;

.field private static b:Landroid/app/Application;

.field private static c:Z


# direct methods
.method public static a(Landroid/app/Application;)V
    .locals 0

    sput-object p0, Lcom/miui/common/e;->b:Landroid/app/Application;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    sput-object p0, Lcom/miui/common/e;->a:Landroid/content/res/Configuration;

    return-void
.end method

.method public static b()Landroid/content/res/Resources;
    .locals 1

    sget-object v0, Lcom/miui/common/e;->b:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public static c()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/miui/common/e;->b:Landroid/app/Application;

    return-object v0
.end method

.method public static d()Landroid/app/Application;
    .locals 1

    sget-object v0, Lcom/miui/common/e;->b:Landroid/app/Application;

    return-object v0
.end method

.method public static e()Z
    .locals 1

    sget-boolean v0, Lcom/miui/common/e;->c:Z

    return v0
.end method

.method public static f()V
    .locals 3

    :try_start_0
    const-string v0, "GlobalApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init MiuiMultiWindowUtils without auto density : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Landroid/util/MiuiMultiWindowUtils;->IS_FOLD_SCREEN_DEVICE:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static g(Z)V
    .locals 0

    sput-boolean p0, Lcom/miui/common/e;->c:Z

    return-void
.end method
