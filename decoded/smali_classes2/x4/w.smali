.class public Lx4/w;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ro.mi.os.custfeatureresolve"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lx4/w;->a:Z

    return-void
.end method

.method public static a(Ljava/lang/String;Z)Z
    .locals 0
    return p1
.end method

.method public static b(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    return-void
.end method
