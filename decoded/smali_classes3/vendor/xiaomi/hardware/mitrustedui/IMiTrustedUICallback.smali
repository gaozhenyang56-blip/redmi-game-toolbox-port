.class public interface abstract Lvendor/xiaomi/hardware/mitrustedui/IMiTrustedUICallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/xiaomi/hardware/mitrustedui/IMiTrustedUICallback$Stub;,
        Lvendor/xiaomi/hardware/mitrustedui/IMiTrustedUICallback$Default;
    }
.end annotation


# static fields
.field public static final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "vendor$xiaomi$hardware$mitrustedui$IMiTrustedUICallback"

    const/16 v1, 0x24

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lvendor/xiaomi/hardware/mitrustedui/IMiTrustedUICallback;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract e()Ljava/lang/String;
.end method

.method public abstract f()I
.end method

.method public abstract r(II)V
.end method
