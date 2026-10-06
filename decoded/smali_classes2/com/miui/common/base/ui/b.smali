.class public Lcom/miui/common/base/ui/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lmiuix/appcompat/app/ProgressDialog;

.field private b:Landroid/app/Activity;

.field private c:Ljava/lang/CharSequence;

.field private d:Landroid/os/Handler;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/common/base/ui/b;->e:Z

    iput-object p1, p0, Lcom/miui/common/base/ui/b;->b:Landroid/app/Activity;

    return-void
.end method

.method static synthetic a(Lcom/miui/common/base/ui/b;)Lmiuix/appcompat/app/ProgressDialog;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/ui/b;->a:Lmiuix/appcompat/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic b(Lcom/miui/common/base/ui/b;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/ui/b;->b:Landroid/app/Activity;

    return-object p0
.end method

.method private c(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v0, v0, v1, v2}, Lmiuix/appcompat/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lmiuix/appcompat/app/ProgressDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/common/base/ui/b;->a:Lmiuix/appcompat/app/ProgressDialog;

    iget-object v0, p0, Lcom/miui/common/base/ui/b;->c:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/miui/common/base/ui/b;->i()V

    return-void
.end method

.method private d()V
    .locals 1

    iget-object v0, p0, Lcom/miui/common/base/ui/b;->a:Lmiuix/appcompat/app/ProgressDialog;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/common/base/ui/b;->b:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/miui/common/base/ui/b;->c(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private i()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/common/base/ui/b;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/common/base/ui/b;->a:Lmiuix/appcompat/app/ProgressDialog;

    new-instance v1, Lcom/miui/common/base/ui/b$b;

    invoke-direct {v1, p0}, Lcom/miui/common/base/ui/b$b;-><init>(Lcom/miui/common/base/ui/b;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/common/base/ui/b;->a:Lmiuix/appcompat/app/ProgressDialog;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-void
.end method


# virtual methods
.method public e(Z)V
    .locals 3

    iget-object p1, p0, Lcom/miui/common/base/ui/b;->a:Lmiuix/appcompat/app/ProgressDialog;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/common/base/ui/b;->d:Landroid/os/Handler;

    if-nez p1, :cond_0

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/miui/common/base/ui/b;->d:Landroid/os/Handler;

    :cond_0
    iget-object p1, p0, Lcom/miui/common/base/ui/b;->d:Landroid/os/Handler;

    new-instance v0, Lcom/miui/common/base/ui/b$a;

    invoke-direct {v0, p0}, Lcom/miui/common/base/ui/b$a;-><init>(Lcom/miui/common/base/ui/b;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public f(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/common/base/ui/b;->e:Z

    iget-object p1, p0, Lcom/miui/common/base/ui/b;->a:Lmiuix/appcompat/app/ProgressDialog;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/miui/common/base/ui/b;->i()V

    :cond_0
    return-void
.end method

.method public g(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/common/base/ui/b;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/common/base/ui/b;->h(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public h(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/common/base/ui/b;->c:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/miui/common/base/ui/b;->a:Lmiuix/appcompat/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public j()V
    .locals 1

    iget-object v0, p0, Lcom/miui/common/base/ui/b;->b:Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/miui/common/base/ui/b;->d()V

    iget-object v0, p0, Lcom/miui/common/base/ui/b;->a:Lmiuix/appcompat/app/ProgressDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/common/base/ui/b;->a:Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    :cond_1
    :goto_0
    return-void
.end method
