.class Lcom/miui/securityscan/MainFragment$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/securityscan/MainFragment;->Q1(Z)V
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

    iput-object p1, p0, Lcom/miui/securityscan/MainFragment$e;->b:Lcom/miui/securityscan/MainFragment;

    iput-object p2, p0, Lcom/miui/securityscan/MainFragment$e;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object p1, p0, Lcom/miui/securityscan/MainFragment$e;->b:Lcom/miui/securityscan/MainFragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/miui/securityscan/MainFragment;->U0(Lcom/miui/securityscan/MainFragment;Z)Z

    const/4 p1, 0x7

    invoke-static {p1}, Lqf/c;->x(I)V

    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p1, :cond_0

    new-instance p1, Landroid/content/Intent;

    const-string p2, "miui.intent.action.GARBAGE_UNINSTALL_APPS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.xiaomi.market"

    const-string v2, "com.xiaomi.market.ui.LocalAppsActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v0, "back"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_0
    iget-object p2, p0, Lcom/miui/securityscan/MainFragment$e;->a:Landroid/app/Activity;

    invoke-static {p2, p1}, Lx4/f1;->R(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/securityscan/MainFragment$e;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f120210

    invoke-static {p1, p2}, Lx4/y1;->j(Landroid/content/Context;I)V

    :cond_1
    return-void
.end method
