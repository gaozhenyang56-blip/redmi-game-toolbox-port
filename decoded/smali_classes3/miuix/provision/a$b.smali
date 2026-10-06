.class Lmiuix/provision/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/provision/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmiuix/provision/a;


# direct methods
.method constructor <init>(Lmiuix/provision/a;)V
    .locals 0

    iput-object p1, p0, Lmiuix/provision/a$b;->a:Lmiuix/provision/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    iget-object p1, p0, Lmiuix/provision/a$b;->a:Lmiuix/provision/a;

    invoke-static {p2}, Lcom/android/provision/IProvisionAnim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/provision/IProvisionAnim;

    move-result-object p2

    invoke-static {p1, p2}, Lmiuix/provision/a;->e(Lmiuix/provision/a;Lcom/android/provision/IProvisionAnim;)Lcom/android/provision/IProvisionAnim;

    :try_start_0
    iget-object p1, p0, Lmiuix/provision/a$b;->a:Lmiuix/provision/a;

    invoke-static {p1}, Lmiuix/provision/a;->d(Lmiuix/provision/a;)Lcom/android/provision/IProvisionAnim;

    move-result-object p1

    iget-object p2, p0, Lmiuix/provision/a$b;->a:Lmiuix/provision/a;

    invoke-static {p2}, Lmiuix/provision/a;->f(Lmiuix/provision/a;)Lcom/android/provision/IAnimCallback;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/android/provision/IProvisionAnim;->v5(Lcom/android/provision/IAnimCallback;)V

    iget-object p1, p0, Lmiuix/provision/a$b;->a:Lmiuix/provision/a;

    invoke-static {p1}, Lmiuix/provision/a;->c(Lmiuix/provision/a;)Lmiuix/provision/a$d;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/provision/a$d;->v()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
