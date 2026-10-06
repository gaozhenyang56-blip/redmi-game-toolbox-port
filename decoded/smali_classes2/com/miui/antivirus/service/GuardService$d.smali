.class Lcom/miui/antivirus/service/GuardService$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antivirus/service/GuardService;->R()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/antivirus/service/GuardService;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/service/GuardService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/service/GuardService$d;->a:Lcom/miui/antivirus/service/GuardService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/antivirus/service/GuardService$d;->a:Lcom/miui/antivirus/service/GuardService;

    invoke-static {v0}, Lcom/miui/antivirus/service/GuardService;->b(Lcom/miui/antivirus/service/GuardService;)Lp9/a;

    move-result-object v0

    new-instance v1, Lcom/miui/antivirus/service/GuardService$d$a;

    invoke-direct {v1, p0}, Lcom/miui/antivirus/service/GuardService$d$a;-><init>(Lcom/miui/antivirus/service/GuardService$d;)V

    invoke-virtual {v0, v1}, Lp9/a;->g(Lp9/a$b;)V

    return-void
.end method
