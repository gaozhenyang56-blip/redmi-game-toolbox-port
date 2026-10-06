.class public Lcom/miui/antivirus/ui/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static c:Lcom/miui/antivirus/ui/h;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/miui/antivirus/ui/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/antivirus/ui/h;->a:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/miui/antivirus/ui/h;
    .locals 2

    const-class v0, Lcom/miui/antivirus/ui/h;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/antivirus/ui/h;->c:Lcom/miui/antivirus/ui/h;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/antivirus/ui/h;

    invoke-direct {v1, p0}, Lcom/miui/antivirus/ui/h;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/miui/antivirus/ui/h;->c:Lcom/miui/antivirus/ui/h;

    :cond_0
    sget-object p0, Lcom/miui/antivirus/ui/h;->c:Lcom/miui/antivirus/ui/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/ui/h;->b:Lcom/miui/antivirus/ui/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/antivirus/ui/h;->b:Lcom/miui/antivirus/ui/g;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public c(ILjava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-static {}, Lo2/h;->d()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/antivirus/ui/h;->b()V

    const v1, 0x7f1215c8

    iget-object v2, p0, Lcom/miui/antivirus/ui/h;->a:Landroid/content/Context;

    if-ne p1, v0, :cond_1

    const v3, 0x7f1216fc

    invoke-static {v2, v3}, Lx4/y1;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/antivirus/ui/h;->a:Landroid/content/Context;

    const v4, 0x7f1216fa

    invoke-static {v3, v4}, Lx4/y1;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/antivirus/ui/h;->a:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/miui/antivirus/ui/h;->a:Landroid/content/Context;

    const/high16 v5, 0x1040000

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    const v3, 0x7f1216fb

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/antivirus/ui/h;->a:Landroid/content/Context;

    const v4, 0x7f1216f9

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/antivirus/ui/h;->a:Landroid/content/Context;

    const v5, 0x7f1215c9

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/antivirus/ui/h;->a:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v7, v4

    move-object v4, v1

    move-object v1, v7

    :goto_0
    new-instance v5, Lcom/miui/antivirus/ui/g;

    iget-object v6, p0, Lcom/miui/antivirus/ui/h;->a:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/miui/antivirus/ui/g;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/miui/antivirus/ui/h;->b:Lcom/miui/antivirus/ui/g;

    if-eq p1, v0, :cond_2

    invoke-virtual {v5, p1, p2}, Lcom/miui/antivirus/ui/g;->i(ILjava/util/ArrayList;)V

    :cond_2
    iget-object p2, p0, Lcom/miui/antivirus/ui/h;->b:Lcom/miui/antivirus/ui/g;

    const/4 v5, -0x1

    invoke-virtual {p2, v5, v1, p0}, Lmiuix/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object p2, p0, Lcom/miui/antivirus/ui/h;->b:Lcom/miui/antivirus/ui/g;

    const/4 v1, -0x2

    invoke-virtual {p2, v1, v4, p0}, Lmiuix/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object p2, p0, Lcom/miui/antivirus/ui/h;->b:Lcom/miui/antivirus/ui/g;

    invoke-virtual {p2, v2}, Lmiuix/appcompat/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/miui/antivirus/ui/h;->b:Lcom/miui/antivirus/ui/g;

    invoke-virtual {p2, v3}, Lcom/miui/antivirus/ui/g;->h(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/miui/antivirus/ui/h;->b:Lcom/miui/antivirus/ui/g;

    if-ne p1, v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p2, v0}, Lcom/miui/antivirus/ui/g;->g(Z)V

    iget-object p1, p0, Lcom/miui/antivirus/ui/h;->b:Lcom/miui/antivirus/ui/g;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    move-object v0, p1

    check-cast v0, Lcom/miui/antivirus/ui/g;

    invoke-virtual {v0}, Lcom/miui/antivirus/ui/g;->f()I

    move-result v1

    const/4 v2, -0x2

    const/4 v3, 0x1

    if-eq p2, v2, :cond_3

    const/4 v2, -0x1

    if-eq p2, v2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_1
    if-eq v1, v3, :cond_2

    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/miui/antivirus/ui/h;->a:Landroid/content/Context;

    const-class v0, Lcom/miui/antivirus/activity/MainActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p2, 0x18000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p2, p0, Lcom/miui/antivirus/ui/h;->a:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string p1, "fix"

    invoke-static {p1}, Lq2/b$b;->m(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/miui/antivirus/ui/g;->e()Z

    move-result p1

    xor-int/2addr p1, v3

    invoke-static {p1}, Lo2/h;->E(Z)V

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_4
    if-eq v1, v3, :cond_5

    const-string p1, "continue"

    invoke-static {p1}, Lq2/b$b;->m(Ljava/lang/String;)V

    :cond_5
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/miui/antivirus/ui/h;->a:Landroid/content/Context;

    const-class v0, Lcom/miui/antivirus/service/GuardService;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "action_pay_safe_dialog_click_ignore"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/miui/antivirus/ui/h;->a:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void
.end method
