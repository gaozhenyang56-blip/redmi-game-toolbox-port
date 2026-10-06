.class public La8/r0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()V
    .locals 11

    :try_start_0
    const-string v0, "android.app.ActivityManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getService"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v3}, Lbh/f;->h(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getAllStackInfos"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v4, v3}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    const-string v5, "configuration"

    invoke-static {v3, v5}, Lbh/f;->j(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "windowConfiguration"

    invoke-static {v5, v6}, Lbh/f;->j(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "getWindowingMode"

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v5, v6, v4, v7}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v6, "android.app.WindowConfiguration"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const-string v7, "WINDOWING_MODE_FREEFORM"

    invoke-static {v6, v7}, Lbh/f;->m(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v5, v6, :cond_0

    const-string v5, "taskIds"

    invoke-static {v3, v5}, Lbh/f;->j(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    const-string v5, "setTaskWindowingMode"

    const/4 v6, 0x3

    new-array v7, v6, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v2

    const/4 v9, 0x1

    aput-object v8, v7, v9

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x2

    aput-object v8, v7, v10

    new-array v6, v6, [Ljava/lang/Object;

    aget v3, v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v9

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v6, v10

    invoke-static {v0, v5, v7, v6}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameBoosterReflectUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public static b(Ljava/lang/String;Landroid/content/Context;)V
    .locals 12

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const-string v2, "android.os.MiuiBinderTransaction$IActivityManager"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "TRANSACT_ID_SET_PACKAGE_HOLD_ON"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v3, v4}, Lbh/f;->n(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "android.app.ActivityManager"

    invoke-static {v3}, Lbh/d$a;->d(Ljava/lang/String;)Lbh/d$a;

    move-result-object v3

    const-string v5, "getService"

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v3, v5, v8, v7}, Lbh/d$a;->c(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lbh/d$a;

    move-result-object v3

    invoke-virtual {v3}, Lbh/d$a;->l()Lbh/d$a;

    move-result-object v3

    const-string v5, "asBinder"

    new-array v7, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v5, v8, v7}, Lbh/d$a;->b(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lbh/d$a;

    move-result-object v3

    invoke-virtual {v3}, Lbh/d$a;->l()Lbh/d$a;

    move-result-object v3

    const-string v5, "transact"

    const/4 v7, 0x4

    new-array v8, v7, [Ljava/lang/Class;

    aput-object v4, v8, v6

    const-class v9, Landroid/os/Parcel;

    const/4 v10, 0x1

    aput-object v9, v8, v10

    const-class v9, Landroid/os/Parcel;

    const/4 v11, 0x2

    aput-object v9, v8, v11

    const/4 v9, 0x3

    aput-object v4, v8, v9

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v6

    aput-object v0, v4, v10

    aput-object v1, v4, v11

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v9

    invoke-virtual {v3, v5, v8, v4}, Lbh/d$a;->b(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lbh/d$a;

    invoke-static {p1, p0, v10}, La8/k0;->v(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string p1, "key_hang_up_pkg"

    invoke-static {p1, p0}, Lr4/a;->r(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    const-string p1, "GameBoosterReflectUtils"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method
