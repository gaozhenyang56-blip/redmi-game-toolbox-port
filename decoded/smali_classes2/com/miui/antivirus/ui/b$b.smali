.class Lcom/miui/antivirus/ui/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antivirus/ui/b;->i(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Lcom/miui/antivirus/ui/b;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/ui/b;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/ui/b$b;->g:Lcom/miui/antivirus/ui/b;

    iput-boolean p2, p0, Lcom/miui/antivirus/ui/b$b;->a:Z

    iput-boolean p3, p0, Lcom/miui/antivirus/ui/b$b;->b:Z

    iput-object p4, p0, Lcom/miui/antivirus/ui/b$b;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/miui/antivirus/ui/b$b;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/miui/antivirus/ui/b$b;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/miui/antivirus/ui/b$b;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-boolean v0, p0, Lcom/miui/antivirus/ui/b$b;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Lo2/h;->O(Z)V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/antivirus/ui/b$b;->g:Lcom/miui/antivirus/ui/b;

    invoke-static {v1}, Lcom/miui/antivirus/ui/b;->a(Lcom/miui/antivirus/ui/b;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/miui/antivirus/service/GuardService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "action_unshelf_warning_dialog_click_ignore"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-boolean v1, p0, Lcom/miui/antivirus/ui/b$b;->b:Z

    const-string v2, "isCurTarget"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/antivirus/ui/b$b;->c:Ljava/lang/String;

    const-string v2, "prePackageName"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/antivirus/ui/b$b;->d:Ljava/lang/String;

    const-string v2, "preClassName"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/antivirus/ui/b$b;->e:Ljava/lang/String;

    const-string v2, "curPackageName"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/antivirus/ui/b$b;->f:Ljava/lang/String;

    const-string v2, "curClassName"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/antivirus/ui/b$b;->g:Lcom/miui/antivirus/ui/b;

    invoke-static {v1}, Lcom/miui/antivirus/ui/b;->a(Lcom/miui/antivirus/ui/b;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
