.class Lcom/miui/securityscan/MainFragment$a;
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

    iput-object p1, p0, Lcom/miui/securityscan/MainFragment$a;->b:Lcom/miui/securityscan/MainFragment;

    iput-object p2, p0, Lcom/miui/securityscan/MainFragment$a;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    :try_start_0
    iget-object p1, p0, Lcom/miui/securityscan/MainFragment$a;->b:Lcom/miui/securityscan/MainFragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/miui/securityscan/MainFragment;->R0(Lcom/miui/securityscan/MainFragment;Z)Z

    invoke-static {p2}, Lqf/c;->x(I)V

    const-string p1, "#Intent;action=miui.intent.action.GARBAGE_CLEANUP;end"

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "enter_homepage_way"

    const-string v0, "security_scan_diversion"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/miui/securityscan/MainFragment$a;->a:Landroid/app/Activity;

    invoke-static {p2, p1}, Lc4/f;->g(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "scMainActivity"

    const-string v0, "URISyntaxException"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
