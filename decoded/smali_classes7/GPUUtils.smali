.class public final LGPUUtils;
.super Ljava/lang/Object;
.source "GPUUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBinder(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 1

    .line 6
    const/4 p0, 0x0

    return-object p0
.end method

.method public static open(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 1

    .line 5
    invoke-static {p0}, Lcom/gzy/redmiport/PortRuntime;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method
