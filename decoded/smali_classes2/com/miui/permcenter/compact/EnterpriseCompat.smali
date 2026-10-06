.class public Lcom/miui/permcenter/compact/EnterpriseCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String; = "EnterpriseCompat"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static shouldGrantPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    const/4 v7, 0x0

    aput-object v1, v5, v7

    const-class v1, Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v5, v2

    :try_start_0
    const-string v1, "EnterpriseCompat"

    const-string v3, "com.miui.enterprise.ApplicationHelper"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v6, "shouldGrantPermission"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v7

    aput-object p1, v0, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v6

    move-object v6, v0

    invoke-static/range {v1 .. v6}, Lcom/miui/permcenter/compact/ReflectUtilHelper;->callStaticObjectMethod(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v7
.end method
