.class public abstract Lxg/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lxg/a;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    invoke-static {}, Lxg/c;->c()Lxg/c;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Lxg/b;->c()Lxg/b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract a(Landroid/os/IBinder;ILandroid/content/Intent;)Z
.end method
