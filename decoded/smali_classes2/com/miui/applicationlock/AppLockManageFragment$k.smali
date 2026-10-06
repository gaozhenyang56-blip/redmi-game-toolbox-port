.class Lcom/miui/applicationlock/AppLockManageFragment$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/miui/applicationlock/AppLockManageFragment$k;->a:Lcom/miui/applicationlock/AppLockManageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/AppLockManageFragment$k;->a:Lcom/miui/applicationlock/AppLockManageFragment;

    invoke-static {v0}, Lcom/miui/applicationlock/AppLockManageFragment;->b0(Lcom/miui/applicationlock/AppLockManageFragment;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/applicationlock/AppLockManageFragment$k;->a:Lcom/miui/applicationlock/AppLockManageFragment;

    invoke-static {p1}, Lcom/miui/applicationlock/AppLockManageFragment;->c0(Lcom/miui/applicationlock/AppLockManageFragment;)Lmiuix/view/l$b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/applicationlock/AppLockManageFragment;->startSearchMode(Lmiuix/view/l$b;)V

    const-string p1, "search"

    invoke-static {p1}, La3/a;->n(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
