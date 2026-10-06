.class Lcom/miui/applicationlock/AppLockManageFragment$q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/applicationlock/AppLockManageFragment;->e1()V
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

    iput-object p1, p0, Lcom/miui/applicationlock/AppLockManageFragment$q;->a:Lcom/miui/applicationlock/AppLockManageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/applicationlock/AppLockManageFragment$q;->a:Lcom/miui/applicationlock/AppLockManageFragment;

    invoke-static {v0}, Lcom/miui/applicationlock/AppLockManageFragment;->z0(Lcom/miui/applicationlock/AppLockManageFragment;)Lc3/m;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/applicationlock/AppLockManageFragment$q;->a:Lcom/miui/applicationlock/AppLockManageFragment;

    invoke-static {v1}, Lcom/miui/applicationlock/AppLockManageFragment;->A0(Lcom/miui/applicationlock/AppLockManageFragment;)Lc3/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc3/m;->D(Lc3/l;)V

    return-void
.end method
