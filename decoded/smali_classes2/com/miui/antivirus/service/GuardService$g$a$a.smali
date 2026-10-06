.class Lcom/miui/antivirus/service/GuardService$g$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp9/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antivirus/service/GuardService$g$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/antivirus/service/GuardService$g$a;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/service/GuardService$g$a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/service/GuardService$g$a$a;->a:Lcom/miui/antivirus/service/GuardService$g$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/miui/guardprovider/aidl/IAntiVirusServer;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/antivirus/service/GuardService$g$a$a;->a:Lcom/miui/antivirus/service/GuardService$g$a;

    iget-object v0, v0, Lcom/miui/antivirus/service/GuardService$g$a;->b:Lcom/miui/antivirus/service/GuardService$g;

    iget-object v0, v0, Lcom/miui/antivirus/service/GuardService$g;->a:Lcom/miui/antivirus/service/GuardService;

    invoke-static {v0}, Lcom/miui/antivirus/service/GuardService;->v(Lcom/miui/antivirus/service/GuardService;)Lo2/i;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antivirus/service/GuardService$g$a$a;->a:Lcom/miui/antivirus/service/GuardService$g$a;

    iget-object v1, v1, Lcom/miui/antivirus/service/GuardService$g$a;->a:Lw2/w;

    invoke-virtual {v0, p1, v1}, Lo2/i;->e(Lcom/miui/guardprovider/aidl/IAntiVirusServer;Lw2/w;)V

    return-void
.end method
