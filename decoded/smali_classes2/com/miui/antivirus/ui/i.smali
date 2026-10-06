.class public Lcom/miui/antivirus/ui/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static volatile d:Lcom/miui/antivirus/ui/i;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/net/wifi/WifiInfo;

.field private c:Lcom/miui/antivirus/ui/g;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/antivirus/ui/i;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/miui/antivirus/ui/i;Lcom/miui/antivirus/ui/g;)Lcom/miui/antivirus/ui/g;
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/ui/i;->c:Lcom/miui/antivirus/ui/g;

    return-object p1
.end method

.method static synthetic b(Lcom/miui/antivirus/ui/i;)Landroid/net/wifi/WifiInfo;
    .locals 0

    iget-object p0, p0, Lcom/miui/antivirus/ui/i;->b:Landroid/net/wifi/WifiInfo;

    return-object p0
.end method

.method static synthetic c(Lcom/miui/antivirus/ui/i;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/antivirus/ui/i;->a:Landroid/content/Context;

    return-object p0
.end method

.method private d()V
    .locals 1

    new-instance v0, Lcom/miui/antivirus/ui/i$b;

    invoke-direct {v0, p0}, Lcom/miui/antivirus/ui/i$b;-><init>(Lcom/miui/antivirus/ui/i;)V

    invoke-static {v0}, Lx4/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static declared-synchronized e(Landroid/content/Context;)Lcom/miui/antivirus/ui/i;
    .locals 2

    const-class v0, Lcom/miui/antivirus/ui/i;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/antivirus/ui/i;->d:Lcom/miui/antivirus/ui/i;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/antivirus/ui/i;

    invoke-direct {v1, p0}, Lcom/miui/antivirus/ui/i;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/miui/antivirus/ui/i;->d:Lcom/miui/antivirus/ui/i;

    :cond_0
    sget-object p0, Lcom/miui/antivirus/ui/i;->d:Lcom/miui/antivirus/ui/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private g()V
    .locals 1

    new-instance v0, Lcom/miui/antivirus/ui/i$c;

    invoke-direct {v0, p0}, Lcom/miui/antivirus/ui/i$c;-><init>(Lcom/miui/antivirus/ui/i;)V

    invoke-static {v0}, Lx4/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized f(Landroid/net/wifi/WifiInfo;)V
    .locals 4

    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/miui/antivirus/ui/i;->c:Lcom/miui/antivirus/ui/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/miui/antivirus/ui/i;->b:Landroid/net/wifi/WifiInfo;

    iget-object p1, p0, Lcom/miui/antivirus/ui/i;->a:Landroid/content/Context;

    const v0, 0x7f120471

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/antivirus/ui/i;->a:Landroid/content/Context;

    const v1, 0x7f120474

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antivirus/ui/i;->a:Landroid/content/Context;

    const v2, 0x7f12047d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/miui/antivirus/ui/g;

    iget-object v3, p0, Lcom/miui/antivirus/ui/i;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/miui/antivirus/ui/g;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/miui/antivirus/ui/i;->c:Lcom/miui/antivirus/ui/g;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, p1, p0}, Lmiuix/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object p1, p0, Lcom/miui/antivirus/ui/i;->c:Lcom/miui/antivirus/ui/g;

    const/4 v2, -0x2

    invoke-virtual {p1, v2, v0, p0}, Lmiuix/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object p1, p0, Lcom/miui/antivirus/ui/i;->c:Lcom/miui/antivirus/ui/g;

    const/4 v0, -0x3

    invoke-virtual {p1, v0, v1, p0}, Lmiuix/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object p1, p0, Lcom/miui/antivirus/ui/i;->c:Lcom/miui/antivirus/ui/g;

    iget-object v0, p0, Lcom/miui/antivirus/ui/i;->a:Landroid/content/Context;

    const v1, 0x7f121c81

    invoke-static {v0, v1}, Lx4/y1;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/antivirus/ui/i;->c:Lcom/miui/antivirus/ui/g;

    iget-object v0, p0, Lcom/miui/antivirus/ui/i;->a:Landroid/content/Context;

    const v1, 0x7f121c7f

    invoke-static {v0, v1}, Lx4/y1;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/antivirus/ui/g;->h(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/antivirus/ui/i;->c:Lcom/miui/antivirus/ui/g;

    iget-object v0, p0, Lcom/miui/antivirus/ui/i;->a:Landroid/content/Context;

    const v1, 0x7f121c80

    invoke-static {v0, v1}, Lx4/y1;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/antivirus/ui/g;->j(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/antivirus/ui/i;->c:Lcom/miui/antivirus/ui/g;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/antivirus/ui/g;->g(Z)V

    iget-object p1, p0, Lcom/miui/antivirus/ui/i;->c:Lcom/miui/antivirus/ui/g;

    new-instance v0, Lcom/miui/antivirus/ui/i$a;

    invoke-direct {v0, p0}, Lcom/miui/antivirus/ui/i$a;-><init>(Lcom/miui/antivirus/ui/i;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object p1, p0, Lcom/miui/antivirus/ui/i;->c:Lcom/miui/antivirus/ui/g;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_1
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, -0x3

    if-eq p2, v0, :cond_1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/miui/antivirus/ui/i;->d()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/miui/antivirus/ui/i;->g()V

    :goto_0
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_2
    return-void
.end method
