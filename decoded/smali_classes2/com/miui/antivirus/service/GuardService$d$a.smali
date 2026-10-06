.class Lcom/miui/antivirus/service/GuardService$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp9/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antivirus/service/GuardService$d;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/antivirus/service/GuardService$d;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/service/GuardService$d;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/service/GuardService$d$a;->a:Lcom/miui/antivirus/service/GuardService$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/miui/guardprovider/aidl/IAntiVirusServer;)V
    .locals 1

    new-instance v0, Lcom/miui/antivirus/service/GuardService$d$a$a;

    invoke-direct {v0, p0, p1}, Lcom/miui/antivirus/service/GuardService$d$a$a;-><init>(Lcom/miui/antivirus/service/GuardService$d$a;Lcom/miui/guardprovider/aidl/IAntiVirusServer;)V

    invoke-static {v0}, Lx4/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method
