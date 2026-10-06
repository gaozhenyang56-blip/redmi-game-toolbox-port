.class Lcom/miui/applicationlock/AppLockManageFragment$o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/applicationlock/a$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/applicationlock/AppLockManageFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/applicationlock/AppLockManageFragment;


# direct methods
.method constructor <init>(Lcom/miui/applicationlock/AppLockManageFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/AppLockManageFragment$o;->a:Lcom/miui/applicationlock/AppLockManageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILc3/b;)V
    .locals 3

    const/4 p1, 0x1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/AppLockManageFragment$o;->a:Lcom/miui/applicationlock/AppLockManageFragment;

    invoke-static {v0}, Lcom/miui/applicationlock/AppLockManageFragment;->j0(Lcom/miui/applicationlock/AppLockManageFragment;)Lcom/miui/applicationlock/a;

    move-result-object v0

    invoke-virtual {p2}, Lc3/b;->f()Z

    move-result v1

    xor-int/2addr v1, p1

    invoke-virtual {v0, p2, v1}, Lcom/miui/applicationlock/a;->u(Lc3/b;Z)V

    iget-object v0, p0, Lcom/miui/applicationlock/AppLockManageFragment$o;->a:Lcom/miui/applicationlock/AppLockManageFragment;

    invoke-static {v0, p2}, Lcom/miui/applicationlock/AppLockManageFragment;->k0(Lcom/miui/applicationlock/AppLockManageFragment;Lc3/b;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/applicationlock/AppLockManageFragment$o;->a:Lcom/miui/applicationlock/AppLockManageFragment;

    invoke-static {v0}, Lcom/miui/applicationlock/AppLockManageFragment;->j0(Lcom/miui/applicationlock/AppLockManageFragment;)Lcom/miui/applicationlock/a;

    move-result-object v0

    invoke-virtual {p2}, Lc3/b;->f()Z

    move-result v1

    iget-object v2, p0, Lcom/miui/applicationlock/AppLockManageFragment$o;->a:Lcom/miui/applicationlock/AppLockManageFragment;

    invoke-static {v2}, Lcom/miui/applicationlock/AppLockManageFragment;->m0(Lcom/miui/applicationlock/AppLockManageFragment;)Lmiui/security/SecurityManager;

    move-result-object v2

    invoke-virtual {v0, v1, p2, v2}, Lcom/miui/applicationlock/a;->s(ZLc3/b;Lmiui/security/SecurityManager;)V

    iget-object p2, p0, Lcom/miui/applicationlock/AppLockManageFragment$o;->a:Lcom/miui/applicationlock/AppLockManageFragment;

    invoke-static {p2}, Lcom/miui/applicationlock/AppLockManageFragment;->l0(Lcom/miui/applicationlock/AppLockManageFragment;)Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/miui/applicationlock/AppLockManageFragment$o;->a:Lcom/miui/applicationlock/AppLockManageFragment;

    invoke-static {p2}, Lcom/miui/applicationlock/AppLockManageFragment;->m0(Lcom/miui/applicationlock/AppLockManageFragment;)Lmiui/security/SecurityManager;

    move-result-object p2

    invoke-static {p2}, Lc3/f;->z(Lmiui/security/SecurityManager;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-eqz p2, :cond_1

    if-ne p2, p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/miui/applicationlock/AppLockManageFragment$o;->a:Lcom/miui/applicationlock/AppLockManageFragment;

    invoke-static {p1}, Lcom/miui/applicationlock/AppLockManageFragment;->f0(Lcom/miui/applicationlock/AppLockManageFragment;)V

    :cond_2
    iget-object p1, p0, Lcom/miui/applicationlock/AppLockManageFragment$o;->a:Lcom/miui/applicationlock/AppLockManageFragment;

    invoke-static {p1}, Lcom/miui/applicationlock/AppLockManageFragment;->j0(Lcom/miui/applicationlock/AppLockManageFragment;)Lcom/miui/applicationlock/a;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/applicationlock/AppLockManageFragment$o;->a:Lcom/miui/applicationlock/AppLockManageFragment;

    invoke-static {p2}, Lcom/miui/applicationlock/AppLockManageFragment;->n0(Lcom/miui/applicationlock/AppLockManageFragment;)Ljava/util/ArrayList;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/miui/applicationlock/a;->w(Ljava/util/List;Z)V

    :cond_3
    return-void
.end method

.method public b(ILc3/v;)V
    .locals 0

    if-eqz p2, :cond_3

    sget-object p1, Lcom/miui/applicationlock/AppLockManageFragment$m;->a:[I

    invoke-virtual {p2}, Lc3/v;->d()Lc3/v$a;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/miui/applicationlock/AppLockManageFragment$o;->a:Lcom/miui/applicationlock/AppLockManageFragment;

    invoke-static {p1}, Lcom/miui/applicationlock/AppLockManageFragment;->r0(Lcom/miui/applicationlock/AppLockManageFragment;)V

    const-string p1, "hide_notification"

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/applicationlock/AppLockManageFragment$o;->a:Lcom/miui/applicationlock/AppLockManageFragment;

    invoke-static {p1}, Lcom/miui/applicationlock/AppLockManageFragment;->q0(Lcom/miui/applicationlock/AppLockManageFragment;)V

    const-string p1, "fingerprint"

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/miui/applicationlock/AppLockManageFragment$o;->a:Lcom/miui/applicationlock/AppLockManageFragment;

    invoke-static {p1}, Lcom/miui/applicationlock/AppLockManageFragment;->p0(Lcom/miui/applicationlock/AppLockManageFragment;)V

    const-string p1, "faceunlock"

    :goto_0
    invoke-static {p1}, La3/a;->n(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method
