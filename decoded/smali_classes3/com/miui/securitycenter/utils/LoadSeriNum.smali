.class public Lcom/miui/securitycenter/utils/LoadSeriNum;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "jni_load_serinum"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public static final native readOTP()[B
.end method
