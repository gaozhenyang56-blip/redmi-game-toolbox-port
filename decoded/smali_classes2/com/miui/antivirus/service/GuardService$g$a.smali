.class Lcom/miui/antivirus/service/GuardService$g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antivirus/service/GuardService$g;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lw2/w;

.field final synthetic b:Lcom/miui/antivirus/service/GuardService$g;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/service/GuardService$g;Lw2/w;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/service/GuardService$g$a;->b:Lcom/miui/antivirus/service/GuardService$g;

    iput-object p2, p0, Lcom/miui/antivirus/service/GuardService$g$a;->a:Lw2/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/antivirus/service/GuardService$g$a;->b:Lcom/miui/antivirus/service/GuardService$g;

    iget-object v0, v0, Lcom/miui/antivirus/service/GuardService$g;->a:Lcom/miui/antivirus/service/GuardService;

    invoke-static {v0}, Lcom/miui/antivirus/service/GuardService;->b(Lcom/miui/antivirus/service/GuardService;)Lp9/a;

    move-result-object v0

    new-instance v1, Lcom/miui/antivirus/service/GuardService$g$a$a;

    invoke-direct {v1, p0}, Lcom/miui/antivirus/service/GuardService$g$a$a;-><init>(Lcom/miui/antivirus/service/GuardService$g$a;)V

    invoke-virtual {v0, v1}, Lp9/a;->g(Lp9/a$b;)V

    return-void
.end method
