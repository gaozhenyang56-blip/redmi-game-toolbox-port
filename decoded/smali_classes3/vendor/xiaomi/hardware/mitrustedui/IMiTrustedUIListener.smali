.class public interface abstract Lvendor/xiaomi/hardware/mitrustedui/IMiTrustedUIListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/xiaomi/hardware/mitrustedui/IMiTrustedUIListener$Stub;,
        Lvendor/xiaomi/hardware/mitrustedui/IMiTrustedUIListener$Default;
    }
.end annotation


# static fields
.field public static final i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "vendor$xiaomi$hardware$mitrustedui$IMiTrustedUIListener"

    const/16 v1, 0x24

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lvendor/xiaomi/hardware/mitrustedui/IMiTrustedUIListener;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract e()Ljava/lang/String;
.end method

.method public abstract f()I
.end method

.method public abstract f6(Lvendor/xiaomi/hardware/mitrustedui/IMiTrustedUIFwkCallback;)I
.end method
