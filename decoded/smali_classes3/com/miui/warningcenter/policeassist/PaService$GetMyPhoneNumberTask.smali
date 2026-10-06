.class Lcom/miui/warningcenter/policeassist/PaService$GetMyPhoneNumberTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/warningcenter/policeassist/PaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GetMyPhoneNumberTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private serviceRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/warningcenter/policeassist/PaService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/miui/warningcenter/policeassist/PaService;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/warningcenter/policeassist/PaService$GetMyPhoneNumberTask;->serviceRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/warningcenter/policeassist/PaService$GetMyPhoneNumberTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 1

    iget-object p1, p0, Lcom/miui/warningcenter/policeassist/PaService$GetMyPhoneNumberTask;->serviceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/warningcenter/policeassist/PaService;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/miui/warningcenter/policeassist/PaUtils;->getMyPhoneNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/warningcenter/policeassist/PaService$GetMyPhoneNumberTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/warningcenter/policeassist/PaService$GetMyPhoneNumberTask;->serviceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/warningcenter/policeassist/PaService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/miui/warningcenter/policeassist/PaService;->access$000(Lcom/miui/warningcenter/policeassist/PaService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/warningcenter/policeassist/PaService;->startLocation(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/miui/warningcenter/policeassist/PaUtils;->isSimCardStateReady(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/miui/warningcenter/policeassist/PaService$TransType;->NETWORK:Lcom/miui/warningcenter/policeassist/PaService$TransType;

    invoke-static {v0, p1}, Lcom/miui/warningcenter/policeassist/PaService;->access$102(Lcom/miui/warningcenter/policeassist/PaService;Lcom/miui/warningcenter/policeassist/PaService$TransType;)Lcom/miui/warningcenter/policeassist/PaService$TransType;

    invoke-static {v0}, Lcom/miui/warningcenter/policeassist/PaService;->access$200(Lcom/miui/warningcenter/policeassist/PaService;)V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/miui/warningcenter/policeassist/PaService$TransType;->SMS:Lcom/miui/warningcenter/policeassist/PaService$TransType;

    invoke-static {v0, p1}, Lcom/miui/warningcenter/policeassist/PaService;->access$102(Lcom/miui/warningcenter/policeassist/PaService;Lcom/miui/warningcenter/policeassist/PaService$TransType;)Lcom/miui/warningcenter/policeassist/PaService$TransType;

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Lcom/miui/warningcenter/policeassist/PaService;->access$000(Lcom/miui/warningcenter/policeassist/PaService;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/warningcenter/analytics/AnalyticHelper;->trackPaSendStatus(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
