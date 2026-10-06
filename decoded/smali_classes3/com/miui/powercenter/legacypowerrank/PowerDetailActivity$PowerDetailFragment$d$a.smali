.class Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment$d;->packageDeleted(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment$d;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment$d;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment$d$a;->a:Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment$d$a;->a:Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment$d;

    iget-object v0, v0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment$d;->a:Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;

    invoke-static {v0}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->w0(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment$d$a;->a:Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment$d;

    iget-object v0, v0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment$d;->a:Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;

    invoke-static {v0}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->t0(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment$d$a;->a:Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment$d;

    iget-object v0, v0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment$d;->a:Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;

    invoke-static {v0}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->x0(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment$d$a;->a:Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment$d;

    iget-object v0, v0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment$d;->a:Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment$d$a;->a:Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment$d;

    iget-object v0, v0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment$d;->a:Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f121af1

    invoke-static {v0, v1}, Leg/c;->n(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method
