.class Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment$d;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->A0(Ljava/lang/Object;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment$d;->a:Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public packageDeleted(Ljava/lang/String;I)V
    .locals 0

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment$d;->a:Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;

    invoke-static {p1}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->h0(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment$d$a;

    invoke-direct {p2, p0}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment$d$a;-><init>(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment$d;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
