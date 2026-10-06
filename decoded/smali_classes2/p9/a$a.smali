.class Lp9/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp9/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lp9/a;


# direct methods
.method constructor <init>(Lp9/a;)V
    .locals 0

    iput-object p1, p0, Lp9/a$a;->a:Lp9/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    sget-object v0, Lcom/miui/securityscan/scanner/o;->o:Lcom/miui/securityscan/scanner/o$b;

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/o$b;->a()Lcom/miui/securityscan/scanner/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/o;->K()V

    iget-object v0, p0, Lp9/a$a;->a:Lp9/a;

    invoke-static {v0}, Lp9/a;->b(Lp9/a;)Lcom/miui/guardprovider/aidl/IAntiVirusServer;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lp9/a$a;->a:Lp9/a;

    invoke-static {v1}, Lp9/a;->a(Lp9/a;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object v0, p0, Lp9/a$a;->a:Lp9/a;

    invoke-static {v0, v2}, Lp9/a;->d(Lp9/a;I)I

    iget-object v0, p0, Lp9/a$a;->a:Lp9/a;

    invoke-static {v0}, Lp9/a;->e(Lp9/a;)V

    return-void
.end method
