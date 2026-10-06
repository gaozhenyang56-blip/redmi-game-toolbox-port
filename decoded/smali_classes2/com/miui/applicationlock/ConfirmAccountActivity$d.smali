.class Lcom/miui/applicationlock/ConfirmAccountActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/applicationlock/ConfirmAccountActivity;->d0(Landroid/app/Activity;Landroid/os/Bundle;Lc3/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lc3/d;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/miui/applicationlock/ConfirmAccountActivity;


# direct methods
.method constructor <init>(Lcom/miui/applicationlock/ConfirmAccountActivity;Lc3/d;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/ConfirmAccountActivity$d;->c:Lcom/miui/applicationlock/ConfirmAccountActivity;

    iput-object p2, p0, Lcom/miui/applicationlock/ConfirmAccountActivity$d;->a:Lc3/d;

    iput-object p3, p0, Lcom/miui/applicationlock/ConfirmAccountActivity$d;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    const-string v1, "booleanResult"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/applicationlock/ConfirmAccountActivity$d;->c:Lcom/miui/applicationlock/ConfirmAccountActivity;

    invoke-static {p1}, Lcom/miui/applicationlock/ConfirmAccountActivity;->i0(Lcom/miui/applicationlock/ConfirmAccountActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "app_binding_result"

    goto :goto_0

    :cond_0
    const-string p1, "binding_result"

    :goto_0
    const-string v1, "not_logged_binding"

    invoke-static {p1, v1}, La3/a;->q(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/applicationlock/ConfirmAccountActivity$d;->a:Lc3/d;

    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccountActivity$d;->b:Landroid/app/Activity;

    invoke-static {v1}, Lc3/w;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lc3/d;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/applicationlock/ConfirmAccountActivity$d;->b:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120413

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lx4/y1;->k(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p1, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccountActivity$d;->b:Landroid/app/Activity;

    const-class v2, Lcom/miui/applicationlock/ApplockRecommendActivity;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extra_data"

    const-string v2, "not_home_start"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "from_guide"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccountActivity$d;->c:Lcom/miui/applicationlock/ConfirmAccountActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object p1, p0, Lcom/miui/applicationlock/ConfirmAccountActivity$d;->b:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/miui/applicationlock/ConfirmAccountActivity$d;->a:Lc3/d;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lc3/d;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p1, "ConfirmAccountActivity"

    const-string v1, "applicationlock error,e"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/applicationlock/ConfirmAccountActivity$d;->c:Lcom/miui/applicationlock/ConfirmAccountActivity;

    invoke-static {p1, v0}, Lcom/miui/applicationlock/ConfirmAccountActivity;->j0(Lcom/miui/applicationlock/ConfirmAccountActivity;Z)Z

    :goto_1
    return-void
.end method
