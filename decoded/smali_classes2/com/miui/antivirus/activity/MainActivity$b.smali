.class Lcom/miui/antivirus/activity/MainActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antivirus/activity/MainActivity;->I1()V
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

    iput-object p1, p0, Lcom/miui/antivirus/activity/MainActivity$b;->a:Lcom/miui/antivirus/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/miui/antivirus/activity/MainActivity$b;->a:Lcom/miui/antivirus/activity/MainActivity;

    invoke-static {p1}, Lcom/miui/antivirus/activity/MainActivity;->T0(Lcom/miui/antivirus/activity/MainActivity;)Z

    move-result p1

    const/high16 p2, 0x4000000

    if-eqz p1, :cond_0

    new-instance p1, Landroid/content/Intent;

    const-string v0, "miui.intent.action.GARBAGE_CLEANUP"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p2, p0, Lcom/miui/antivirus/activity/MainActivity$b;->a:Lcom/miui/antivirus/activity/MainActivity;

    invoke-static {p2, p1}, Lc4/f;->g(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/miui/common/e;->c()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "miui.intent.action.SECURITY_CENTER"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 p2, 0x1

    const-string v0, "extra_auto_optimize"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p2, p0, Lcom/miui/antivirus/activity/MainActivity$b;->a:Lcom/miui/antivirus/activity/MainActivity;

    invoke-virtual {p2, p1}, Lcom/miui/common/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    iget-object p1, p0, Lcom/miui/antivirus/activity/MainActivity$b;->a:Lcom/miui/antivirus/activity/MainActivity;

    invoke-static {p1}, Lcom/miui/antivirus/activity/MainActivity;->T0(Lcom/miui/antivirus/activity/MainActivity;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "clean_master"

    goto :goto_1

    :cond_1
    const-string p1, "home_page_optimise"

    :goto_1
    invoke-static {p1}, Lq2/b$b;->d(Ljava/lang/String;)V

    return-void
.end method
