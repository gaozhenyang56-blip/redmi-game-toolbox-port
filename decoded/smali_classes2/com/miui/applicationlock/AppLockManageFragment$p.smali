.class Lcom/miui/applicationlock/AppLockManageFragment$p;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/applicationlock/AppLockManageFragment;->a1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/applicationlock/AppLockManageFragment;


# direct methods
.method constructor <init>(Lcom/miui/applicationlock/AppLockManageFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/AppLockManageFragment$p;->a:Lcom/miui/applicationlock/AppLockManageFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2

    iget-object p1, p0, Lcom/miui/applicationlock/AppLockManageFragment$p;->a:Lcom/miui/applicationlock/AppLockManageFragment;

    invoke-static {p1}, Lcom/miui/applicationlock/AppLockManageFragment;->s0(Lcom/miui/applicationlock/AppLockManageFragment;)Lc3/n;

    move-result-object p1

    invoke-virtual {p1}, Lc3/n;->i()Z

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/applicationlock/AppLockManageFragment$p;->a:Lcom/miui/applicationlock/AppLockManageFragment;

    invoke-static {p1}, Lcom/miui/applicationlock/AppLockManageFragment;->P0(Lcom/miui/applicationlock/AppLockManageFragment;)Lc3/d;

    move-result-object p1

    invoke-virtual {p1}, Lc3/d;->s()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/applicationlock/AppLockManageFragment$p;->a:Lcom/miui/applicationlock/AppLockManageFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/applicationlock/TransitionHelper;->b(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/applicationlock/AppLockManageFragment$p;->a:Lcom/miui/applicationlock/AppLockManageFragment;

    invoke-static {p1}, Lcom/miui/applicationlock/AppLockManageFragment;->s0(Lcom/miui/applicationlock/AppLockManageFragment;)Lc3/n;

    move-result-object p1

    invoke-virtual {p1}, Lc3/n;->h()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "cancel_fingerprint_verify_times"

    invoke-static {p1, v1}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result p1

    if-ge p1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const-string p1, "cancel_fingerprint_guide_times"

    invoke-static {p1, v1}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result p1

    if-ge p1, v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected b(Ljava/lang/Integer;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/applicationlock/AppLockManageFragment$p;->a:Lcom/miui/applicationlock/AppLockManageFragment;

    invoke-static {v0}, Lcom/miui/applicationlock/AppLockManageFragment;->Q0(Lcom/miui/applicationlock/AppLockManageFragment;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/applicationlock/AppLockManageFragment$p;->a:Lcom/miui/applicationlock/AppLockManageFragment;

    invoke-static {v0}, Lcom/miui/applicationlock/AppLockManageFragment;->Q0(Lcom/miui/applicationlock/AppLockManageFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/applicationlock/AppLockManageFragment$p;->a:Lcom/miui/applicationlock/AppLockManageFragment;

    invoke-static {v0}, Lcom/miui/applicationlock/AppLockManageFragment;->Q0(Lcom/miui/applicationlock/AppLockManageFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-static {}, Lx4/a0;->t()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/applicationlock/AppLockManageFragment$p;->a:Lcom/miui/applicationlock/AppLockManageFragment;

    invoke-static {p1}, Lcom/miui/applicationlock/AppLockManageFragment;->t0(Lcom/miui/applicationlock/AppLockManageFragment;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/applicationlock/AppLockManageFragment$p;->a:Lcom/miui/applicationlock/AppLockManageFragment;

    invoke-static {p1}, Lcom/miui/applicationlock/AppLockManageFragment;->u0(Lcom/miui/applicationlock/AppLockManageFragment;)V

    :goto_0
    iget-object p1, p0, Lcom/miui/applicationlock/AppLockManageFragment$p;->a:Lcom/miui/applicationlock/AppLockManageFragment;

    invoke-static {p1}, Lcom/miui/applicationlock/AppLockManageFragment;->s0(Lcom/miui/applicationlock/AppLockManageFragment;)Lc3/n;

    move-result-object p1

    new-instance v0, Lcom/miui/applicationlock/AppLockManageFragment$u;

    iget-object v2, p0, Lcom/miui/applicationlock/AppLockManageFragment$p;->a:Lcom/miui/applicationlock/AppLockManageFragment;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/miui/applicationlock/AppLockManageFragment$u;-><init>(Lcom/miui/applicationlock/AppLockManageFragment;Lcom/miui/applicationlock/AppLockManageFragment$k;)V

    invoke-virtual {p1, v0, v1}, Lc3/n;->c(Lc3/h;I)V

    iget-object p1, p0, Lcom/miui/applicationlock/AppLockManageFragment$p;->a:Lcom/miui/applicationlock/AppLockManageFragment;

    invoke-static {p1, v1}, Lcom/miui/applicationlock/AppLockManageFragment;->v0(Lcom/miui/applicationlock/AppLockManageFragment;Z)Z

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/miui/applicationlock/AppLockManageFragment$p;->a:Lcom/miui/applicationlock/AppLockManageFragment;

    invoke-static {p1}, Lcom/miui/applicationlock/AppLockManageFragment;->x0(Lcom/miui/applicationlock/AppLockManageFragment;)V

    :cond_3
    :goto_1
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/applicationlock/AppLockManageFragment$p;->a([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/miui/applicationlock/AppLockManageFragment$p;->b(Ljava/lang/Integer;)V

    return-void
.end method
