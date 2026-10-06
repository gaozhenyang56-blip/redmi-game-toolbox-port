.class Lcom/xiaomi/security/devicecredential/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/security/devicecredential/IOnRemoteCallFinishedListener;


# instance fields
.field private final a:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/security/devicecredential/a;->a:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/security/devicecredential/a;->a:Landroid/os/IBinder;

    return-object v0
.end method
