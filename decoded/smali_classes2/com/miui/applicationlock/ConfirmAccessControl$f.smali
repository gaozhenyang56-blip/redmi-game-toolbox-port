.class Lcom/miui/applicationlock/ConfirmAccessControl$f;
.super Landroid/view/OrientationEventListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/applicationlock/ConfirmAccessControl;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/applicationlock/ConfirmAccessControl;


# direct methods
.method constructor <init>(Lcom/miui/applicationlock/ConfirmAccessControl;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl$f;->a:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const-string p1, "ConfirmAccessControl"

    const-string v0, "onOrientationChanged: orientation == ORIENTATION_UNKNOWN"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl$f;->a:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {p1}, Lcom/miui/applicationlock/ConfirmAccessControl;->U0(Lcom/miui/applicationlock/ConfirmAccessControl;)Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl$f;->a:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    invoke-static {v0, p1}, Lcom/miui/applicationlock/ConfirmAccessControl;->W0(Lcom/miui/applicationlock/ConfirmAccessControl;I)I

    iget-object p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl$f;->a:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {p1}, Lcom/miui/applicationlock/ConfirmAccessControl;->V0(Lcom/miui/applicationlock/ConfirmAccessControl;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->X0(Lcom/miui/applicationlock/ConfirmAccessControl;I)V

    return-void
.end method
