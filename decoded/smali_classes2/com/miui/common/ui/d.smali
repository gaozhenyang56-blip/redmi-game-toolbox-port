.class public Lcom/miui/common/ui/d;
.super Lmiuix/appcompat/app/AlertDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/common/ui/d$b;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Landroid/hardware/display/DisplayManager;

.field private c:Landroid/hardware/display/DisplayManager$DisplayListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, p1}, Lcom/miui/common/ui/d;->i(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic e(Lcom/miui/common/ui/d;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/common/ui/d;->a:Z

    return p0
.end method

.method static synthetic f(Lcom/miui/common/ui/d;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/common/ui/d;->a:Z

    return p1
.end method

.method public static g(Landroid/content/Context;)Landroid/content/Context;
    .locals 4

    invoke-static {}, Lx4/y;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lbl/p;->g(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    if-lt v2, v3, :cond_0

    invoke-static {}, Lcom/miui/common/ui/d;->h()I

    move-result v2

    invoke-static {p0, v0, v2, v1}, Lcom/miui/common/ui/c;->a(Landroid/content/Context;Landroid/view/Display;ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v1

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    return-object p0
.end method

.method private static h()I
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/16 v0, 0x7f6

    goto :goto_0

    :cond_0
    const/16 v0, 0x7d3

    :goto_0
    return v0
.end method

.method private i(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lx4/y;->h()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/common/ui/d;->a:Z

    const-string v0, "display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/miui/common/ui/d;->b:Landroid/hardware/display/DisplayManager;

    new-instance p1, Lcom/miui/common/ui/d$a;

    invoke-direct {p1, p0}, Lcom/miui/common/ui/d$a;-><init>(Lcom/miui/common/ui/d;)V

    iput-object p1, p0, Lcom/miui/common/ui/d;->c:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object v0, p0, Lcom/miui/common/ui/d;->b:Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public j()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {}, Lcom/miui/common/ui/d;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    return-void
.end method

.method protected onStop()V
    .locals 2

    invoke-super {p0}, Lmiuix/appcompat/app/AlertDialog;->onStop()V

    iget-object v0, p0, Lcom/miui/common/ui/d;->b:Landroid/hardware/display/DisplayManager;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/miui/common/ui/d;->c:Landroid/hardware/display/DisplayManager$DisplayListener;

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/miui/common/ui/d;->c:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    :cond_1
    return-void
.end method
