.class public Lv7/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv7/c$e;
    }
.end annotation


# static fields
.field private static b:Lv7/c;


# instance fields
.field private a:Landroid/os/CountDownTimer;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lv7/c;
    .locals 2

    const-class v0, Lv7/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lv7/c;->b:Lv7/c;

    if-nez v1, :cond_0

    new-instance v1, Lv7/c;

    invoke-direct {v1}, Lv7/c;-><init>()V

    sput-object v1, Lv7/c;->b:Lv7/c;

    :cond_0
    sget-object v1, Lv7/c;->b:Lv7/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public b()V
    .locals 1

    iget-object v0, p0, Lv7/c;->a:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lv7/c;->a:Landroid/os/CountDownTimer;

    :cond_0
    return-void
.end method

.method public c(Landroid/content/Context;Lv7/c$e;)V
    .locals 12

    if-nez p1, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "showStorageAlert error:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "StorageAlertDialogUtils"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const v0, 0x7f120ad2

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f1219ef

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f120ad3

    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f120499

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lv7/c$c;

    invoke-direct {v4, p0, p2}, Lv7/c$c;-><init>(Lv7/c;Lv7/c$e;)V

    invoke-virtual {v1, v2, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lv7/c$b;

    invoke-direct {v2, p0, p2}, Lv7/c$b;-><init>(Lv7/c;Lv7/c$e;)V

    invoke-virtual {v1, v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lv7/c$a;

    invoke-direct {v1, p0, p2}, Lv7/c$a;-><init>(Lv7/c;Lv7/c$e;)V

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p2

    invoke-virtual {p2}, Lmiuix/appcompat/app/AlertDialog;->show()V

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Lmiuix/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/view/View;->setEnabled(Z)V

    iget-object p2, p0, Lv7/c;->a:Landroid/os/CountDownTimer;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/os/CountDownTimer;->cancel()V

    const/4 p2, 0x0

    iput-object p2, p0, Lv7/c;->a:Landroid/os/CountDownTimer;

    :cond_2
    new-instance p2, Lv7/c$d;

    const-wide/16 v6, 0xfa0

    const-wide/16 v8, 0x3e8

    move-object v4, p2

    move-object v5, p0

    move-object v11, p1

    invoke-direct/range {v4 .. v11}, Lv7/c$d;-><init>(Lv7/c;JJLandroid/widget/Button;Landroid/content/Context;)V

    invoke-virtual {p2}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object p1

    iput-object p1, p0, Lv7/c;->a:Landroid/os/CountDownTimer;

    return-void
.end method
