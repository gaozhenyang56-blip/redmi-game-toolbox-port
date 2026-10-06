.class Lcom/miui/securityscan/OptimizeAndResultActivity$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/common/customview/ActionBarContainer$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/securityscan/OptimizeAndResultActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/securityscan/OptimizeAndResultActivity;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/OptimizeAndResultActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/OptimizeAndResultActivity$h;->a:Lcom/miui/securityscan/OptimizeAndResultActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity$h;->a:Lcom/miui/securityscan/OptimizeAndResultActivity;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method public b()V
    .locals 4

    iget-object v0, p0, Lcom/miui/securityscan/OptimizeAndResultActivity$h;->a:Lcom/miui/securityscan/OptimizeAndResultActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/securityscan/OptimizeAndResultActivity$h;->a:Lcom/miui/securityscan/OptimizeAndResultActivity;

    const-class v3, Lcom/miui/securityscan/ui/settings/SettingsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/miui/securityscan/OptimizeAndResultActivity$h;->a:Lcom/miui/securityscan/OptimizeAndResultActivity;

    const v3, 0x7f120097

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ":miui:starting_window_label"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/common/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    const-string v0, "securitysettings"

    invoke-static {v0}, Lqf/c;->M(Ljava/lang/String;)V

    return-void
.end method
