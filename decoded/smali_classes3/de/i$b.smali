.class Lde/i$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lde/i;


# direct methods
.method constructor <init>(Lde/i;)V
    .locals 0

    iput-object p1, p0, Lde/i$b;->a:Lde/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 1

    iget-object p1, p0, Lde/i$b;->a:Lde/i;

    invoke-static {p1}, Lde/i;->r(Lde/i;)Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object p1, p0, Lde/i$b;->a:Lde/i;

    invoke-static {p1}, Lde/i;->s(Lde/i;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lde/i$b;->a:Lde/i;

    invoke-static {p1}, Lde/i;->s(Lde/i;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lde/i$b;->a:Lde/i;

    invoke-virtual {p1}, Lde/i;->F()V

    :cond_1
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
