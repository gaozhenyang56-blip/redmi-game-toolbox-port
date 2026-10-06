.class Lve/g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lve/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lve/g;


# direct methods
.method constructor <init>(Lve/g;)V
    .locals 0

    iput-object p1, p0, Lve/g$b;->a:Lve/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string p1, "ActiveWindowManager"

    const-string v0, "onServiceConnected"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lve/g$b;->a:Lve/g;

    invoke-static {p2}, Lcom/miui/gameturbo/active/IActiveManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/gameturbo/active/IActiveManager;

    move-result-object v1

    invoke-static {v0, v1}, Lve/g;->c(Lve/g;Lcom/miui/gameturbo/active/IActiveManager;)Lcom/miui/gameturbo/active/IActiveManager;

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceConnected: mIActiveManager = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lve/g$b;->a:Lve/g;

    invoke-static {v1}, Lve/g;->b(Lve/g;)Lcom/miui/gameturbo/active/IActiveManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lve/g$b;->a:Lve/g;

    invoke-static {p1}, Lve/g;->e(Lve/g;)Landroid/os/IBinder$DeathRecipient;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
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
    .locals 1

    iget-object p1, p0, Lve/g$b;->a:Lve/g;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lve/g;->c(Lve/g;Lcom/miui/gameturbo/active/IActiveManager;)Lcom/miui/gameturbo/active/IActiveManager;

    return-void
.end method
