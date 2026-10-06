.class Lde/j$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/j;->Q(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmiuix/appcompat/app/AlertDialog;


# direct methods
.method constructor <init>(Lmiuix/appcompat/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lde/j$c;->a:Lmiuix/appcompat/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lde/j$c;->a:Lmiuix/appcompat/app/AlertDialog;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const v0, 0x1020001

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/e;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lgd/c;->p1()V

    :cond_1
    return-void
.end method
