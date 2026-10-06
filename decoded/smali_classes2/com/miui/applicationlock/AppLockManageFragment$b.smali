.class Lcom/miui/applicationlock/AppLockManageFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/applicationlock/AppLockManageFragment;->g1()V
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

    iput-object p1, p0, Lcom/miui/applicationlock/AppLockManageFragment$b;->a:Lcom/miui/applicationlock/AppLockManageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/AppLockManageFragment$b;->a:Lcom/miui/applicationlock/AppLockManageFragment;

    invoke-static {v0}, Lcom/miui/applicationlock/AppLockManageFragment;->z0(Lcom/miui/applicationlock/AppLockManageFragment;)Lc3/m;

    move-result-object v0

    invoke-virtual {v0}, Lc3/m;->E()V

    return-void
.end method
