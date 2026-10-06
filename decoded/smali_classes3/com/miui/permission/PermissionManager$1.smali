.class Lcom/miui/permission/PermissionManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/permission/PermissionManager;->setApplicationPermission(JIII[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/permission/PermissionManager;

.field final synthetic val$action:I

.field final synthetic val$flags:I

.field final synthetic val$packages:[Ljava/lang/String;

.field final synthetic val$permission:J

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/miui/permission/PermissionManager;JIII[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/permission/PermissionManager$1;->this$0:Lcom/miui/permission/PermissionManager;

    iput-wide p2, p0, Lcom/miui/permission/PermissionManager$1;->val$permission:J

    iput p4, p0, Lcom/miui/permission/PermissionManager$1;->val$action:I

    iput p5, p0, Lcom/miui/permission/PermissionManager$1;->val$userId:I

    iput p6, p0, Lcom/miui/permission/PermissionManager$1;->val$flags:I

    iput-object p7, p0, Lcom/miui/permission/PermissionManager$1;->val$packages:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/miui/permission/PermissionManager$1;->this$0:Lcom/miui/permission/PermissionManager;

    iget-wide v1, p0, Lcom/miui/permission/PermissionManager$1;->val$permission:J

    iget v3, p0, Lcom/miui/permission/PermissionManager$1;->val$action:I

    iget v4, p0, Lcom/miui/permission/PermissionManager$1;->val$userId:I

    iget v5, p0, Lcom/miui/permission/PermissionManager$1;->val$flags:I

    iget-object v6, p0, Lcom/miui/permission/PermissionManager$1;->val$packages:[Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/miui/permission/PermissionManager;->setApplicationPermissionNow(JIII[Ljava/lang/String;)V

    return-void
.end method
