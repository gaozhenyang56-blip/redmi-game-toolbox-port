.class Lcom/miui/common/ui/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/common/ui/d;->i(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/common/ui/d;


# direct methods
.method constructor <init>(Lcom/miui/common/ui/d;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/ui/d$a;->a:Lcom/miui/common/ui/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 2

    invoke-static {}, Lx4/y;->h()Z

    move-result p1

    iget-object v0, p0, Lcom/miui/common/ui/d$a;->a:Lcom/miui/common/ui/d;

    invoke-static {v0}, Lcom/miui/common/ui/d;->e(Lcom/miui/common/ui/d;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    const-string v0, "SwitchFoldAutoDismissAlertDialog"

    const-string v1, "isFlipDeviceFolded changed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/common/ui/d$a;->a:Lcom/miui/common/ui/d;

    invoke-static {v0, p1}, Lcom/miui/common/ui/d;->f(Lcom/miui/common/ui/d;Z)Z

    iget-object p1, p0, Lcom/miui/common/ui/d$a;->a:Lcom/miui/common/ui/d;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
