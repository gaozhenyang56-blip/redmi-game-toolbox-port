.class Lcom/miui/antivirus/service/DialogService$c;
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Lcom/miui/antivirus/service/DialogService;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/service/DialogService;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/service/DialogService$c;->c:Lcom/miui/antivirus/service/DialogService;

    iput-object p2, p0, Lcom/miui/antivirus/service/DialogService$c;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/miui/antivirus/service/DialogService$c;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/antivirus/service/DialogService$c;->c:Lcom/miui/antivirus/service/DialogService;

    invoke-static {v0}, Lcom/miui/antivirus/ui/b;->d(Landroid/content/Context;)Lcom/miui/antivirus/ui/b;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antivirus/service/DialogService$c;->a:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/miui/antivirus/service/DialogService$c;->b:Z

    invoke-virtual {v0, v1, v2}, Lcom/miui/antivirus/ui/b;->g(Ljava/lang/String;Z)V

    return-void
.end method
