.class Lcom/miui/simlock/fragment/SimLockStartFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/simlock/fragment/SimLockStartFragment;->s0()V
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
.field final synthetic a:Lcom/miui/simlock/fragment/SimLockStartFragment;


# direct methods
.method constructor <init>(Lcom/miui/simlock/fragment/SimLockStartFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/simlock/fragment/SimLockStartFragment$a;->a:Lcom/miui/simlock/fragment/SimLockStartFragment;

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

    const-string v0, "SimLock"

    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    const-string v1, "booleanResult"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SimLockStartFragment::signMiAccount::result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/simlock/fragment/SimLockStartFragment$a;->a:Lcom/miui/simlock/fragment/SimLockStartFragment;

    const/4 v1, 0x2

    invoke-static {p1, v1}, Lcom/miui/simlock/fragment/SimLockStartFragment;->h0(Lcom/miui/simlock/fragment/SimLockStartFragment;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "sign mi account error."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p1, p0, Lcom/miui/simlock/fragment/SimLockStartFragment$a;->a:Lcom/miui/simlock/fragment/SimLockStartFragment;

    invoke-static {p1}, Lcom/miui/simlock/fragment/SimLockStartFragment;->i0(Lcom/miui/simlock/fragment/SimLockStartFragment;)Lcom/miui/simlock/fragment/preference/IconTitleCheckBoxPreference;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/simlock/fragment/preference/IconTitleCheckBoxPreference;->setChecked(Z)V

    :goto_0
    return-void
.end method
