.class Lcom/miui/securityscan/MainFragment$c0;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/securityscan/MainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c0"
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/securityscan/MainFragment;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/MainFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/MainFragment$c0;->a:Lcom/miui/securityscan/MainFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-static {}, Lcom/miui/securityscan/scanner/ScoreManager;->j()Lcom/miui/securityscan/scanner/ScoreManager;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/securityscan/MainFragment$c0;->a:Lcom/miui/securityscan/MainFragment;

    invoke-static {p1}, Lcom/miui/securityscan/MainFragment;->L0(Lcom/miui/securityscan/MainFragment;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/securityscan/MainFragment$c0;->a:Lcom/miui/securityscan/MainFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/securityscan/MainFragment$c0;->a:Lcom/miui/securityscan/MainFragment;

    invoke-static {p2, p1}, Lcom/miui/securityscan/MainFragment;->q0(Lcom/miui/securityscan/MainFragment;Landroid/app/Activity;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/miui/securityscan/MainFragment$c0;->a:Lcom/miui/securityscan/MainFragment;

    iget-object p2, p2, Lcom/miui/securityscan/MainFragment;->L:Lrf/j;

    const/4 v0, 0x1

    iput-boolean v0, p2, Lrf/j;->b:Z

    invoke-static {p1}, Lcom/miui/securityscan/scanner/k;->n(Landroid/content/Context;)Lcom/miui/securityscan/scanner/k;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/securityscan/MainFragment$c0;->a:Lcom/miui/securityscan/MainFragment;

    iget-object p2, p2, Lcom/miui/securityscan/MainFragment;->L:Lrf/j;

    invoke-virtual {p1, p2}, Lcom/miui/securityscan/scanner/k;->z(Lrf/i;)V

    :cond_1
    return-void
.end method
