.class Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$c;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
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

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$c;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getResultCode()I

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p1, p2}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->f0(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;Z)Z

    :cond_1
    return-void
.end method
