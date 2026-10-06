.class Lcom/miui/applicationlock/AppLockManageFragment$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/applicationlock/AppLockManageFragment;
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

    iput-object p1, p0, Lcom/miui/applicationlock/AppLockManageFragment$n;->a:Lcom/miui/applicationlock/AppLockManageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/applicationlock/AppLockManageFragment$n;->a:Lcom/miui/applicationlock/AppLockManageFragment;

    invoke-static {v0}, Lcom/miui/applicationlock/AppLockManageFragment;->l0(Lcom/miui/applicationlock/AppLockManageFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/AppLockManageFragment$n;->a:Lcom/miui/applicationlock/AppLockManageFragment;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/applicationlock/AppLockManageFragment;->y0(Lcom/miui/applicationlock/AppLockManageFragment;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/miui/applicationlock/AppLockManageFragment$n;->a:Lcom/miui/applicationlock/AppLockManageFragment;

    invoke-static {p1}, Lcom/miui/applicationlock/AppLockManageFragment;->w0(Lcom/miui/applicationlock/AppLockManageFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/miui/applicationlock/AppLockManageFragment$n;->a:Lcom/miui/applicationlock/AppLockManageFragment;

    invoke-static {v2}, Lcom/miui/applicationlock/AppLockManageFragment;->D0(Lcom/miui/applicationlock/AppLockManageFragment;)Lmiuix/recyclerview/widget/RecyclerView;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lx4/b;->b(Z[Landroid/view/View;)V

    iget-object p1, p0, Lcom/miui/applicationlock/AppLockManageFragment$n;->a:Lcom/miui/applicationlock/AppLockManageFragment;

    invoke-static {p1}, Lcom/miui/applicationlock/AppLockManageFragment;->w0(Lcom/miui/applicationlock/AppLockManageFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/applicationlock/AppLockManageFragment;->N0(Lcom/miui/applicationlock/AppLockManageFragment;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
