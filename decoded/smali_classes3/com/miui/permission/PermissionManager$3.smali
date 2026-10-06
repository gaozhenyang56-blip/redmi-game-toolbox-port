.class Lcom/miui/permission/PermissionManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/permission/PermissionManager;->setMode(IILjava/lang/String;IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/permission/PermissionManager;

.field final synthetic val$code:I

.field final synthetic val$flags:I

.field final synthetic val$mode:I

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$supportRuntime:Z

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/miui/permission/PermissionManager;IILjava/lang/String;IIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/permission/PermissionManager$3;->this$0:Lcom/miui/permission/PermissionManager;

    iput p2, p0, Lcom/miui/permission/PermissionManager$3;->val$code:I

    iput p3, p0, Lcom/miui/permission/PermissionManager$3;->val$uid:I

    iput-object p4, p0, Lcom/miui/permission/PermissionManager$3;->val$packageName:Ljava/lang/String;

    iput p5, p0, Lcom/miui/permission/PermissionManager$3;->val$mode:I

    iput p6, p0, Lcom/miui/permission/PermissionManager$3;->val$flags:I

    iput-boolean p7, p0, Lcom/miui/permission/PermissionManager$3;->val$supportRuntime:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/miui/permission/PermissionManager$3;->this$0:Lcom/miui/permission/PermissionManager;

    iget v1, p0, Lcom/miui/permission/PermissionManager$3;->val$code:I

    iget v2, p0, Lcom/miui/permission/PermissionManager$3;->val$uid:I

    iget-object v3, p0, Lcom/miui/permission/PermissionManager$3;->val$packageName:Ljava/lang/String;

    iget v4, p0, Lcom/miui/permission/PermissionManager$3;->val$mode:I

    iget v5, p0, Lcom/miui/permission/PermissionManager$3;->val$flags:I

    iget-boolean v6, p0, Lcom/miui/permission/PermissionManager$3;->val$supportRuntime:Z

    invoke-static/range {v0 .. v6}, Lcom/miui/permission/PermissionManager;->access$000(Lcom/miui/permission/PermissionManager;IILjava/lang/String;IIZ)V

    return-void
.end method
