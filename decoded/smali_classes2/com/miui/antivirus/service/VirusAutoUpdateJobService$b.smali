.class Lcom/miui/antivirus/service/VirusAutoUpdateJobService$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antivirus/service/VirusAutoUpdateJobService;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/antivirus/service/VirusAutoUpdateJobService;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/service/VirusAutoUpdateJobService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/service/VirusAutoUpdateJobService$b;->a:Lcom/miui/antivirus/service/VirusAutoUpdateJobService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Lh2/f;

    iget-object v1, p0, Lcom/miui/antivirus/service/VirusAutoUpdateJobService$b;->a:Lcom/miui/antivirus/service/VirusAutoUpdateJobService;

    invoke-direct {v0, v1}, Lh2/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lh2/f;->f()V

    return-void
.end method
