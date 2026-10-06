.class Lcom/miui/antivirus/service/VirusAutoUpdateJobService$c;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antivirus/service/VirusAutoUpdateJobService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/miui/antivirus/service/VirusAutoUpdateJobService$d;

.field final synthetic b:Lcom/miui/antivirus/service/VirusAutoUpdateJobService;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/service/VirusAutoUpdateJobService;Lcom/miui/antivirus/service/VirusAutoUpdateJobService$d;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/service/VirusAutoUpdateJobService$c;->b:Lcom/miui/antivirus/service/VirusAutoUpdateJobService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/miui/antivirus/service/VirusAutoUpdateJobService$c;->a:Lcom/miui/antivirus/service/VirusAutoUpdateJobService$d;

    return-void
.end method

.method static synthetic a(Lcom/miui/antivirus/service/VirusAutoUpdateJobService$c;)Lcom/miui/antivirus/service/VirusAutoUpdateJobService$d;
    .locals 0

    iget-object p0, p0, Lcom/miui/antivirus/service/VirusAutoUpdateJobService$c;->a:Lcom/miui/antivirus/service/VirusAutoUpdateJobService$d;

    return-object p0
.end method


# virtual methods
.method protected varargs b([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    iget-object p1, p0, Lcom/miui/antivirus/service/VirusAutoUpdateJobService$c;->b:Lcom/miui/antivirus/service/VirusAutoUpdateJobService;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lp9/a;->j(Landroid/content/Context;)Lp9/a;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/antivirus/service/VirusAutoUpdateJobService$c;->b:Lcom/miui/antivirus/service/VirusAutoUpdateJobService;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo2/f;->a(Landroid/content/Context;)Lo2/f;

    move-result-object v0

    new-instance v1, Lcom/miui/antivirus/service/VirusAutoUpdateJobService$c$a;

    invoke-direct {v1, p0, v0, p1}, Lcom/miui/antivirus/service/VirusAutoUpdateJobService$c$a;-><init>(Lcom/miui/antivirus/service/VirusAutoUpdateJobService$c;Lo2/f;Lp9/a;)V

    invoke-virtual {v0, v1}, Lo2/f;->i(Lcom/miui/guardprovider/VirusObserver;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/antivirus/service/VirusAutoUpdateJobService$c;->b([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
