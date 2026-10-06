.class Lcom/miui/antivirus/service/GuardService$d$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antivirus/service/GuardService$d$a;->a(Lcom/miui/guardprovider/aidl/IAntiVirusServer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/guardprovider/aidl/IAntiVirusServer;

.field final synthetic b:Lcom/miui/antivirus/service/GuardService$d$a;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/service/GuardService$d$a;Lcom/miui/guardprovider/aidl/IAntiVirusServer;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/service/GuardService$d$a$a;->b:Lcom/miui/antivirus/service/GuardService$d$a;

    iput-object p2, p0, Lcom/miui/antivirus/service/GuardService$d$a$a;->a:Lcom/miui/guardprovider/aidl/IAntiVirusServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/antivirus/service/GuardService$d$a$a;->b:Lcom/miui/antivirus/service/GuardService$d$a;

    iget-object v0, v0, Lcom/miui/antivirus/service/GuardService$d$a;->a:Lcom/miui/antivirus/service/GuardService$d;

    iget-object v0, v0, Lcom/miui/antivirus/service/GuardService$d;->a:Lcom/miui/antivirus/service/GuardService;

    invoke-static {v0}, Lcom/miui/antivirus/service/GuardService;->t(Lcom/miui/antivirus/service/GuardService;)Lo2/g;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antivirus/service/GuardService$d$a$a;->a:Lcom/miui/guardprovider/aidl/IAntiVirusServer;

    iget-object v2, p0, Lcom/miui/antivirus/service/GuardService$d$a$a;->b:Lcom/miui/antivirus/service/GuardService$d$a;

    iget-object v2, v2, Lcom/miui/antivirus/service/GuardService$d$a;->a:Lcom/miui/antivirus/service/GuardService$d;

    iget-object v2, v2, Lcom/miui/antivirus/service/GuardService$d;->a:Lcom/miui/antivirus/service/GuardService;

    iget-object v2, v2, Lcom/miui/antivirus/service/GuardService;->i:Lo2/g$h;

    invoke-virtual {v0, v1, v2}, Lo2/g;->u0(Lcom/miui/guardprovider/aidl/IAntiVirusServer;Lo2/g$h;)V

    return-void
.end method
