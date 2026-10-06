.class Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$d;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;

    if-eqz p1, :cond_0

    invoke-static {p2}, Lcom/miui/powerkeeper/IPowerKeeper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/powerkeeper/IPowerKeeper;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->j0(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;Lcom/miui/powerkeeper/IPowerKeeper;)Lcom/miui/powerkeeper/IPowerKeeper;

    invoke-static {p1}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->k0(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;)V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->j0(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;Lcom/miui/powerkeeper/IPowerKeeper;)Lcom/miui/powerkeeper/IPowerKeeper;

    :cond_0
    return-void
.end method
