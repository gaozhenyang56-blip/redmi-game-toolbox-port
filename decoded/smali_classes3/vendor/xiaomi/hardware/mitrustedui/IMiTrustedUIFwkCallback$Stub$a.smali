.class Lvendor/xiaomi/hardware/mitrustedui/IMiTrustedUIFwkCallback$Stub$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvendor/xiaomi/hardware/mitrustedui/IMiTrustedUIFwkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/xiaomi/hardware/mitrustedui/IMiTrustedUIFwkCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/os/IBinder;

.field private k:I

.field private l:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lvendor/xiaomi/hardware/mitrustedui/IMiTrustedUIFwkCallback$Stub$a;->k:I

    const-string v0, "-1"

    iput-object v0, p0, Lvendor/xiaomi/hardware/mitrustedui/IMiTrustedUIFwkCallback$Stub$a;->l:Ljava/lang/String;

    iput-object p1, p0, Lvendor/xiaomi/hardware/mitrustedui/IMiTrustedUIFwkCallback$Stub$a;->a:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lvendor/xiaomi/hardware/mitrustedui/IMiTrustedUIFwkCallback$Stub$a;->a:Landroid/os/IBinder;

    return-object v0
.end method
