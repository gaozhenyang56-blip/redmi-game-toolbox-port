.class La7/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La7/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:La7/j;


# direct methods
.method constructor <init>(La7/j;)V
    .locals 0

    iput-object p1, p0, La7/j$a;->a:La7/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    iget-object p1, p0, La7/j$a;->a:La7/j;

    invoke-static {p2}, Lcom/miui/gamebooster/service/IGameBoosterTelecomeManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/gamebooster/service/IGameBoosterTelecomeManager;

    move-result-object p2

    invoke-static {p1, p2}, La7/j;->g(La7/j;Lcom/miui/gamebooster/service/IGameBoosterTelecomeManager;)Lcom/miui/gamebooster/service/IGameBoosterTelecomeManager;

    :try_start_0
    iget-object p1, p0, La7/j$a;->a:La7/j;

    invoke-static {p1}, La7/j;->f(La7/j;)Lcom/miui/gamebooster/service/IGameBoosterTelecomeManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/miui/gamebooster/service/IGameBoosterTelecomeManager;->O7()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, La7/j$a;->a:La7/j;

    const/4 v0, 0x0

    invoke-static {p1, v0}, La7/j;->g(La7/j;Lcom/miui/gamebooster/service/IGameBoosterTelecomeManager;)Lcom/miui/gamebooster/service/IGameBoosterTelecomeManager;

    return-void
.end method
