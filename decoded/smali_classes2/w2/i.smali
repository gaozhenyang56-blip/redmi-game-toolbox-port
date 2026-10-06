.class public Lw2/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private a:Landroid/content/DialogInterface$OnClickListener;

.field private b:Landroid/content/DialogInterface$OnDismissListener;

.field private c:Landroid/content/DialogInterface$OnCancelListener;


# direct methods
.method public constructor <init>(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw2/i;->a:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw2/i;->b:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method

.method static synthetic a(Lw2/i;Landroid/content/DialogInterface$OnClickListener;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    iput-object p1, p0, Lw2/i;->a:Landroid/content/DialogInterface$OnClickListener;

    return-object p1
.end method

.method static synthetic b(Lw2/i;Landroid/content/DialogInterface$OnCancelListener;)Landroid/content/DialogInterface$OnCancelListener;
    .locals 0

    iput-object p1, p0, Lw2/i;->c:Landroid/content/DialogInterface$OnCancelListener;

    return-object p1
.end method


# virtual methods
.method public c(Landroid/app/Dialog;)V
    .locals 1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lw2/i$a;

    invoke-direct {v0, p0}, Lw2/i$a;-><init>(Lw2/i;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnWindowAttachListener(Landroid/view/ViewTreeObserver$OnWindowAttachListener;)V

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lw2/i;->c:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lw2/i;->a:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lw2/i;->b:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lw2/i;->b:Landroid/content/DialogInterface$OnDismissListener;

    :cond_0
    return-void
.end method
