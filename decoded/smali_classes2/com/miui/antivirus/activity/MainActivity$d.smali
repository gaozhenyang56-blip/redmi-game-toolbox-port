.class Lcom/miui/antivirus/activity/MainActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antivirus/activity/MainActivity;->N1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/antivirus/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/activity/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/activity/MainActivity$d;->a:Lcom/miui/antivirus/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/miui/antivirus/activity/MainActivity$d;->a:Lcom/miui/antivirus/activity/MainActivity;

    invoke-static {p1}, Lcom/miui/antivirus/activity/MainActivity;->S0(Lcom/miui/antivirus/activity/MainActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/antivirus/activity/MainActivity$d;->a:Lcom/miui/antivirus/activity/MainActivity;

    invoke-static {p1}, Lcom/miui/antivirus/activity/MainActivity;->V0(Lcom/miui/antivirus/activity/MainActivity;)Lu2/a;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/antivirus/activity/MainActivity$d;->a:Lcom/miui/antivirus/activity/MainActivity;

    invoke-static {p1}, Lcom/miui/antivirus/activity/MainActivity;->V0(Lcom/miui/antivirus/activity/MainActivity;)Lu2/a;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lu2/a;->v(Z)V

    iget-object p1, p0, Lcom/miui/antivirus/activity/MainActivity$d;->a:Lcom/miui/antivirus/activity/MainActivity;

    invoke-static {p1}, Lcom/miui/antivirus/activity/MainActivity;->V0(Lcom/miui/antivirus/activity/MainActivity;)Lu2/a;

    move-result-object p1

    invoke-virtual {p1}, Lu2/a;->l()V

    :cond_1
    iget-object p1, p0, Lcom/miui/antivirus/activity/MainActivity$d;->a:Lcom/miui/antivirus/activity/MainActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/miui/antivirus/activity/MainActivity;->r0(Lcom/miui/antivirus/activity/MainActivity;Z)Z

    iget-object p1, p0, Lcom/miui/antivirus/activity/MainActivity$d;->a:Lcom/miui/antivirus/activity/MainActivity;

    invoke-static {p1, p2}, Lcom/miui/antivirus/activity/MainActivity;->M0(Lcom/miui/antivirus/activity/MainActivity;Z)Z

    iget-object p1, p0, Lcom/miui/antivirus/activity/MainActivity$d;->a:Lcom/miui/antivirus/activity/MainActivity;

    sget-object p2, Lcom/miui/antivirus/activity/MainActivity$r0;->a:Lcom/miui/antivirus/activity/MainActivity$r0;

    invoke-static {p1, p2}, Lcom/miui/antivirus/activity/MainActivity;->E0(Lcom/miui/antivirus/activity/MainActivity;Lcom/miui/antivirus/activity/MainActivity$r0;)Lcom/miui/antivirus/activity/MainActivity$r0;

    iget-object p1, p0, Lcom/miui/antivirus/activity/MainActivity$d;->a:Lcom/miui/antivirus/activity/MainActivity;

    invoke-static {p1}, Lcom/miui/antivirus/activity/MainActivity;->J0(Lcom/miui/antivirus/activity/MainActivity;)Lcom/miui/antivirus/ui/MainActivityView;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Lcom/miui/antivirus/ui/MainActivityView;->setHandleActionButtonEnabled(Ljava/lang/Boolean;)V

    iget-object p1, p0, Lcom/miui/antivirus/activity/MainActivity$d;->a:Lcom/miui/antivirus/activity/MainActivity;

    invoke-static {p1}, Lcom/miui/antivirus/activity/MainActivity;->J0(Lcom/miui/antivirus/activity/MainActivity;)Lcom/miui/antivirus/ui/MainActivityView;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/antivirus/activity/MainActivity$d;->a:Lcom/miui/antivirus/activity/MainActivity;

    const v0, 0x7f120459

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/antivirus/ui/MainActivityView;->setActionButtonText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/antivirus/activity/MainActivity$d;->a:Lcom/miui/antivirus/activity/MainActivity;

    invoke-static {p1}, Lcom/miui/antivirus/activity/MainActivity;->J0(Lcom/miui/antivirus/activity/MainActivity;)Lcom/miui/antivirus/ui/MainActivityView;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/antivirus/activity/MainActivity$d;->a:Lcom/miui/antivirus/activity/MainActivity;

    const v0, 0x7f12064b

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/antivirus/ui/MainActivityView;->setContentSummary(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/antivirus/activity/MainActivity$d;->a:Lcom/miui/antivirus/activity/MainActivity;

    invoke-static {p1}, Lcom/miui/antivirus/activity/MainActivity;->m0(Lcom/miui/antivirus/activity/MainActivity;)V

    iget-object p1, p0, Lcom/miui/antivirus/activity/MainActivity$d;->a:Lcom/miui/antivirus/activity/MainActivity;

    invoke-static {p1}, Lcom/miui/antivirus/activity/MainActivity;->C0(Lcom/miui/antivirus/activity/MainActivity;)V

    return-void
.end method
