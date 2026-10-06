.class Lcom/miui/antivirus/service/DialogService$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antivirus/service/DialogService;->onHandleIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/miui/antivirus/service/DialogService;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/service/DialogService;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/service/DialogService$d;->d:Lcom/miui/antivirus/service/DialogService;

    iput-object p2, p0, Lcom/miui/antivirus/service/DialogService$d;->a:Landroid/content/Intent;

    iput-object p3, p0, Lcom/miui/antivirus/service/DialogService$d;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/antivirus/service/DialogService$d;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/miui/antivirus/service/DialogService$d;->d:Lcom/miui/antivirus/service/DialogService;

    invoke-static {v0}, Lcom/miui/antivirus/ui/b;->d(Landroid/content/Context;)Lcom/miui/antivirus/ui/b;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antivirus/service/DialogService$d;->a:Landroid/content/Intent;

    const-string v2, "isCurTarget"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iget-object v2, p0, Lcom/miui/antivirus/service/DialogService$d;->a:Landroid/content/Intent;

    const-string v3, "prePackageName"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/antivirus/service/DialogService$d;->a:Landroid/content/Intent;

    const-string v4, "preClassName"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/antivirus/service/DialogService$d;->a:Landroid/content/Intent;

    const-string v5, "curClassName"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/miui/antivirus/ui/b;->f(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/antivirus/service/DialogService$d;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/antivirus/service/DialogService$d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/miui/antivirus/ui/b;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
