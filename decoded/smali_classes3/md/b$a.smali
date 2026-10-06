.class Lmd/b$a;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmd/b;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmd/b;


# direct methods
.method constructor <init>(Lmd/b;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lmd/b$a;->a:Lmd/b;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object p1, p0, Lmd/b$a;->a:Lmd/b;

    invoke-static {p1}, Lmd/b;->o(Lmd/b;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sec_setting_handle_charge_protect"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {p1, v0}, Lmd/b;->n(Lmd/b;Z)Z

    iget-object p1, p0, Lmd/b$a;->a:Lmd/b;

    invoke-static {p1}, Lmd/b;->q(Lmd/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmd/b$a;->a:Lmd/b;

    invoke-static {v0}, Lmd/b;->m(Lmd/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    invoke-static {p1, v2}, Lmd/b;->p(Lmd/b;Z)Z

    iget-object p1, p0, Lmd/b$a;->a:Lmd/b;

    invoke-virtual {p1}, Lmd/b;->r()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mHandleProtectStateOpen:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lmd/b$a;->a:Lmd/b;

    invoke-static {v0}, Lmd/b;->m(Lmd/b;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BaseChargeProtect_CameraHandle"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
