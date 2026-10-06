.class Lcom/miui/applicationlock/AppLockManageFragment$s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    iput-object p1, p0, Lcom/miui/applicationlock/AppLockManageFragment$s;->a:Lcom/miui/applicationlock/AppLockManageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "cancel_face_unlock_verify_times"

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lr4/a;->p(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/miui/applicationlock/AppLockManageFragment$s;->a:Lcom/miui/applicationlock/AppLockManageFragment;

    invoke-static {p1}, Lcom/miui/applicationlock/AppLockManageFragment;->C0(Lcom/miui/applicationlock/AppLockManageFragment;)V

    return-void
.end method
