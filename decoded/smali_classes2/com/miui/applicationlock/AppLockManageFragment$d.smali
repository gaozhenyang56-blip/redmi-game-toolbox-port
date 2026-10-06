.class Lcom/miui/applicationlock/AppLockManageFragment$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/applicationlock/AppLockManageFragment;->W0()V
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

    iput-object p1, p0, Lcom/miui/applicationlock/AppLockManageFragment$d;->a:Lcom/miui/applicationlock/AppLockManageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string p1, "cancel_fingerprint_verify_times"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lr4/a;->p(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/miui/applicationlock/AppLockManageFragment$d;->a:Lcom/miui/applicationlock/AppLockManageFragment;

    invoke-static {p1}, Lcom/miui/applicationlock/AppLockManageFragment;->d0(Lcom/miui/applicationlock/AppLockManageFragment;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismissWithoutAnimation()V

    return-void
.end method
