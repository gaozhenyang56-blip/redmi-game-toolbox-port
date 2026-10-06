.class public Lcom/miui/antivirus/ui/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/antivirus/ui/b$e;
    }
.end annotation


# static fields
.field private static volatile i:Lcom/miui/antivirus/ui/b;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lcom/miui/antivirus/ui/a;

.field private h:Lcom/miui/antivirus/ui/a;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/antivirus/ui/b;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/miui/antivirus/ui/b;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/antivirus/ui/b;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lcom/miui/antivirus/ui/b;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/antivirus/ui/b;->j(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private c(ZLjava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/miui/antivirus/ui/b$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/antivirus/ui/b$a;-><init>(Lcom/miui/antivirus/ui/b;ZLjava/lang/String;)V

    invoke-static {v0}, Lx4/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static declared-synchronized d(Landroid/content/Context;)Lcom/miui/antivirus/ui/b;
    .locals 2

    const-class v0, Lcom/miui/antivirus/ui/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/antivirus/ui/b;->i:Lcom/miui/antivirus/ui/b;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/antivirus/ui/b;

    invoke-direct {v1, p0}, Lcom/miui/antivirus/ui/b;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/miui/antivirus/ui/b;->i:Lcom/miui/antivirus/ui/b;

    :cond_0
    sget-object p0, Lcom/miui/antivirus/ui/b;->i:Lcom/miui/antivirus/ui/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private e(Ljava/lang/String;Z)V
    .locals 1

    new-instance v0, Lcom/miui/antivirus/ui/b$d;

    invoke-direct {v0, p0, p2, p1}, Lcom/miui/antivirus/ui/b$d;-><init>(Lcom/miui/antivirus/ui/b;ZLjava/lang/String;)V

    invoke-static {v0}, Lx4/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method private i(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    new-instance v8, Lcom/miui/antivirus/ui/b$b;

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/miui/antivirus/ui/b$b;-><init>(Lcom/miui/antivirus/ui/b;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v8}, Lx4/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method private j(Landroid/content/Context;Ljava/lang/String;)V
    .locals 12

    const-string v0, "AntiFraudDialogHandler"

    :try_start_0
    const-string v1, "android.app.AppGlobals"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getPackageManager"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v4, v5}, Lbh/e;->f(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, p2}, Ltg/a;->g(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1, p2}, Lx4/f1;->r(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x0

    const/16 v10, 0x3e7

    const/4 v11, 0x0

    move-object v7, p2

    invoke-static/range {v6 .. v11}, Ltg/a;->b(Ljava/lang/Object;Ljava/lang/String;ILandroid/content/pm/IPackageDeleteObserver;II)V

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p1, p2, v1, v3}, Ltg/a;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "cleanupVirus exception!"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private k(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/miui/antivirus/ui/b$c;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/miui/antivirus/ui/b$c;-><init>(Lcom/miui/antivirus/ui/b;ZLjava/lang/String;Landroid/content/Context;)V

    invoke-static {v0}, Lx4/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public f(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/antivirus/ui/b;->c:Z

    iput-object p2, p0, Lcom/miui/antivirus/ui/b;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/antivirus/ui/b;->e:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/antivirus/ui/b;->f:Ljava/lang/String;

    return-void
.end method

.method public declared-synchronized g(Ljava/lang/String;Z)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/antivirus/ui/b;->g:Lcom/miui/antivirus/ui/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/miui/antivirus/ui/b;->b:Ljava/lang/String;

    iget-object p1, p0, Lcom/miui/antivirus/ui/b;->a:Landroid/content/Context;

    const v0, 0x7f120107

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/antivirus/ui/b;->a:Landroid/content/Context;

    const v1, 0x7f120103

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antivirus/ui/b;->a:Landroid/content/Context;

    const v2, 0x7f120104

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/miui/antivirus/ui/a;

    iget-object v3, p0, Lcom/miui/antivirus/ui/b;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/miui/antivirus/ui/a;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/miui/antivirus/ui/b;->g:Lcom/miui/antivirus/ui/a;

    invoke-virtual {v2, v1}, Lcom/miui/antivirus/ui/a;->g(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/miui/antivirus/ui/b;->g:Lcom/miui/antivirus/ui/a;

    iget-object v1, p0, Lcom/miui/antivirus/ui/b;->a:Landroid/content/Context;

    const v2, 0x7f120105

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/miui/antivirus/ui/a;->h(Landroid/text/Spanned;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/miui/antivirus/ui/b;->a:Landroid/content/Context;

    const v1, 0x7f12008c

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/miui/antivirus/ui/b;->a:Landroid/content/Context;

    const v2, 0x7f120106

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    new-instance v3, Lcom/miui/antivirus/ui/b$e;

    iget-object v4, p0, Lcom/miui/antivirus/ui/b;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/miui/antivirus/ui/b;->g:Lcom/miui/antivirus/ui/a;

    iget-object v6, p0, Lcom/miui/antivirus/ui/b;->b:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v6}, Lcom/miui/antivirus/ui/b$e;-><init>(Landroid/content/Context;Lcom/miui/antivirus/ui/a;Ljava/lang/String;)V

    add-int/2addr p2, v1

    const/16 v4, 0x21

    invoke-virtual {v2, v3, v1, p2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object p2, p0, Lcom/miui/antivirus/ui/b;->g:Lcom/miui/antivirus/ui/a;

    invoke-virtual {p2, v2}, Lcom/miui/antivirus/ui/a;->h(Landroid/text/Spanned;)V

    iget-object p2, p0, Lcom/miui/antivirus/ui/b;->g:Lcom/miui/antivirus/ui/a;

    invoke-virtual {p2}, Lcom/miui/antivirus/ui/a;->i()V

    :goto_0
    iget-object p2, p0, Lcom/miui/antivirus/ui/b;->g:Lcom/miui/antivirus/ui/a;

    const v1, 0x7f120116

    invoke-virtual {p2, v1}, Lcom/miui/antivirus/ui/a;->f(I)V

    iget-object p2, p0, Lcom/miui/antivirus/ui/b;->g:Lcom/miui/antivirus/ui/a;

    const/4 v1, -0x1

    invoke-virtual {p2, v1, p1, p0}, Lmiuix/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object p1, p0, Lcom/miui/antivirus/ui/b;->g:Lcom/miui/antivirus/ui/a;

    const/4 p2, -0x2

    invoke-virtual {p1, p2, v0, p0}, Lmiuix/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object p1, p0, Lcom/miui/antivirus/ui/b;->g:Lcom/miui/antivirus/ui/a;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/miui/antivirus/ui/b;->h:Lcom/miui/antivirus/ui/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/miui/antivirus/ui/b;->b:Ljava/lang/String;

    iget-object p1, p0, Lcom/miui/antivirus/ui/b;->a:Landroid/content/Context;

    const v0, 0x7f121740

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/antivirus/ui/b;->a:Landroid/content/Context;

    const v1, 0x7f121742

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antivirus/ui/b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f121741

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lcom/miui/antivirus/ui/a;

    iget-object v2, p0, Lcom/miui/antivirus/ui/b;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/miui/antivirus/ui/a;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/antivirus/ui/b;->h:Lcom/miui/antivirus/ui/a;

    invoke-virtual {v1, p2}, Lcom/miui/antivirus/ui/a;->g(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/miui/antivirus/ui/b;->h:Lcom/miui/antivirus/ui/a;

    const/4 v1, -0x1

    invoke-virtual {p2, v1, p1, p0}, Lmiuix/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object p1, p0, Lcom/miui/antivirus/ui/b;->h:Lcom/miui/antivirus/ui/a;

    const/4 p2, -0x2

    invoke-virtual {p1, p2, v0, p0}, Lmiuix/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object p1, p0, Lcom/miui/antivirus/ui/b;->h:Lcom/miui/antivirus/ui/a;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x2

    if-eq p2, v0, :cond_3

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/miui/antivirus/ui/b;->g:Lcom/miui/antivirus/ui/a;

    if-ne p1, p2, :cond_2

    iget-object p2, p0, Lcom/miui/antivirus/ui/b;->a:Landroid/content/Context;

    move-object v0, p1

    check-cast v0, Lcom/miui/antivirus/ui/a;

    invoke-virtual {v0}, Lcom/miui/antivirus/ui/a;->e()Z

    move-result v0

    iget-object v1, p0, Lcom/miui/antivirus/ui/b;->b:Ljava/lang/String;

    invoke-direct {p0, p2, v0, v1}, Lcom/miui/antivirus/ui/b;->k(Landroid/content/Context;ZLjava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/miui/antivirus/ui/b;->h:Lcom/miui/antivirus/ui/a;

    if-ne p1, p2, :cond_5

    move-object p2, p1

    check-cast p2, Lcom/miui/antivirus/ui/a;

    invoke-virtual {p2}, Lcom/miui/antivirus/ui/a;->e()Z

    move-result p2

    iget-object v0, p0, Lcom/miui/antivirus/ui/b;->b:Ljava/lang/String;

    invoke-direct {p0, p2, v0}, Lcom/miui/antivirus/ui/b;->c(ZLjava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lcom/miui/antivirus/ui/b;->g:Lcom/miui/antivirus/ui/a;

    if-ne p1, p2, :cond_4

    iget-object p2, p0, Lcom/miui/antivirus/ui/b;->b:Ljava/lang/String;

    move-object v0, p1

    check-cast v0, Lcom/miui/antivirus/ui/a;

    invoke-virtual {v0}, Lcom/miui/antivirus/ui/a;->e()Z

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/miui/antivirus/ui/b;->e(Ljava/lang/String;Z)V

    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_1

    :cond_4
    iget-object p2, p0, Lcom/miui/antivirus/ui/b;->h:Lcom/miui/antivirus/ui/a;

    if-ne p1, p2, :cond_5

    move-object p2, p1

    check-cast p2, Lcom/miui/antivirus/ui/a;

    invoke-virtual {p2}, Lcom/miui/antivirus/ui/a;->e()Z

    move-result v1

    iget-boolean v2, p0, Lcom/miui/antivirus/ui/b;->c:Z

    iget-object v3, p0, Lcom/miui/antivirus/ui/b;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/antivirus/ui/b;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/miui/antivirus/ui/b;->b:Ljava/lang/String;

    iget-object v6, p0, Lcom/miui/antivirus/ui/b;->f:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/miui/antivirus/ui/b;->i(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    :goto_1
    return-void
.end method
