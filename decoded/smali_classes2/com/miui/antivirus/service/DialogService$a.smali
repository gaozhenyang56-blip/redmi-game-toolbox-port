.class Lcom/miui/antivirus/service/DialogService$a;
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
.field final synthetic a:I

.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:Lcom/miui/antivirus/service/DialogService;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/service/DialogService;ILjava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/service/DialogService$a;->c:Lcom/miui/antivirus/service/DialogService;

    iput p2, p0, Lcom/miui/antivirus/service/DialogService$a;->a:I

    iput-object p3, p0, Lcom/miui/antivirus/service/DialogService$a;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/antivirus/service/DialogService$a;->c:Lcom/miui/antivirus/service/DialogService;

    invoke-static {v0}, Lcom/miui/antivirus/ui/h;->a(Landroid/content/Context;)Lcom/miui/antivirus/ui/h;

    move-result-object v0

    iget v1, p0, Lcom/miui/antivirus/service/DialogService$a;->a:I

    iget-object v2, p0, Lcom/miui/antivirus/service/DialogService$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/miui/antivirus/ui/h;->c(ILjava/util/ArrayList;)V

    return-void
.end method
