.class Lcom/miui/antivirus/service/VirusAutoUpdateJobService$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj2/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antivirus/service/VirusAutoUpdateJobService;->onStartJob(Landroid/app/job/JobParameters;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/antivirus/service/VirusAutoUpdateJobService$d;

.field final synthetic b:Lcom/miui/antivirus/service/VirusAutoUpdateJobService;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/service/VirusAutoUpdateJobService;Lcom/miui/antivirus/service/VirusAutoUpdateJobService$d;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/service/VirusAutoUpdateJobService$a;->b:Lcom/miui/antivirus/service/VirusAutoUpdateJobService;

    iput-object p2, p0, Lcom/miui/antivirus/service/VirusAutoUpdateJobService$a;->a:Lcom/miui/antivirus/service/VirusAutoUpdateJobService$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/antivirus/service/VirusAutoUpdateJobService$a;->a:Lcom/miui/antivirus/service/VirusAutoUpdateJobService$d;

    invoke-virtual {p1}, Lcom/miui/antivirus/service/VirusAutoUpdateJobService$d;->a()V

    return-void
.end method
