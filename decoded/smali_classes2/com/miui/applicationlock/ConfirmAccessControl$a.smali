.class Lcom/miui/applicationlock/ConfirmAccessControl$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/applicationlock/ConfirmAccessControl;->m1(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lcom/miui/applicationlock/ConfirmAccessControl;


# direct methods
.method constructor <init>(Lcom/miui/applicationlock/ConfirmAccessControl;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl$a;->b:Lcom/miui/applicationlock/ConfirmAccessControl;

    iput-object p2, p0, Lcom/miui/applicationlock/ConfirmAccessControl$a;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl$a;->b:Lcom/miui/applicationlock/ConfirmAccessControl;

    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccessControl$a;->a:Landroid/os/Bundle;

    invoke-static {v0, v0, v1}, Lcom/miui/applicationlock/ConfirmAccessControl;->g1(Lcom/miui/applicationlock/ConfirmAccessControl;Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method
