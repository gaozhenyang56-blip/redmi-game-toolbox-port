.class Lcom/miui/securityscan/MainFragment$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/securityscan/MainFragment;->E1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/miui/securityscan/MainFragment;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/MainFragment;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/MainFragment$h;->b:Lcom/miui/securityscan/MainFragment;

    iput-object p2, p0, Lcom/miui/securityscan/MainFragment$h;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/16 p1, 0xa

    invoke-static {p1}, Lqf/c;->x(I)V

    new-instance p1, Landroid/content/Intent;

    const-string p2, "miui.intent.action.GARBAGE_CLEANUP"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "enter_homepage_way"

    const-string v0, "security_scan_diversion"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/miui/securityscan/MainFragment$h;->a:Landroid/app/Activity;

    invoke-static {p2}, Lc4/e;->b(Landroid/content/Context;)Z

    move-result p2

    const/16 v0, 0x67

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/miui/securityscan/MainFragment$h;->a:Landroid/app/Activity;

    invoke-static {p2, p1, v0}, Lx4/f1;->S(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/securityscan/MainFragment$h;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f120210

    invoke-static {p1, p2}, Lx4/y1;->j(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/miui/securityscan/MainFragment$h;->a:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {p2, p1, v0, v1}, Lc4/f;->i(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    :cond_1
    :goto_0
    return-void
.end method
