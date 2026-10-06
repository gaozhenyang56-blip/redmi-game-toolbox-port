.class public Loc/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Loc/g$b;,
        Loc/g$a;,
        Loc/g$c;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/pm/PermissionInfo;)Ljava/lang/String;
    .locals 2

    :try_start_0
    const-class v0, Landroid/content/pm/PermissionInfo;

    const-string v1, "backgroundPermission"

    invoke-static {p0, v0, v1}, Lbh/f;->i(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method
