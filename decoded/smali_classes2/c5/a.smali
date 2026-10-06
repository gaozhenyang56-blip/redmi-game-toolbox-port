.class public Lc5/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Z
    .locals 9

    invoke-static {}, Ldb/c;->i()Z

    move-result v0

    invoke-static {}, Lk6/d;->b()Z

    move-result v1

    invoke-static {}, Lf7/b;->m()Z

    move-result v2

    invoke-static {}, Lx4/t;->E()Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    sget-boolean v5, Lmiui/os/Build;->IS_DEVELOPMENT_VERSION:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    invoke-static {}, Ldb/c;->c()Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isSupportDock: isSupportFreeform="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, "\tisPhone="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, "\tisAboveMiui125="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, "\tisSupportDock="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, "\tisDevBuild="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "DockFeature"

    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    if-nez v0, :cond_2

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    move v4, v6

    :cond_2
    :goto_1
    return v4
.end method
