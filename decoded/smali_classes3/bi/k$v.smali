.class Lbi/k$v;
.super Lcom/qti/wifidbprovider/IWiFiDBProviderResponseListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbi/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "v"
.end annotation


# instance fields
.field final synthetic a:Lbi/k;


# direct methods
.method private constructor <init>(Lbi/k;)V
    .locals 0

    iput-object p1, p0, Lbi/k$v;->a:Lbi/k;

    invoke-direct {p0}, Lcom/qti/wifidbprovider/IWiFiDBProviderResponseListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lbi/k;Lbi/k$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lbi/k$v;-><init>(Lbi/k;)V

    return-void
.end method


# virtual methods
.method public g()V
    .locals 2

    invoke-static {}, Lbi/k;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lbi/k;->B()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onServiceRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lbi/k$v;->a:Lbi/k;

    invoke-static {v0}, Lbi/k;->m(Lbi/k;)Lbi/k$o;

    return-void
.end method

.method public g4(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qti/wifidbprovider/APObsLocData;",
            ">;I)V"
        }
    .end annotation

    invoke-static {}, Lbi/k;->p()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lbi/k;->B()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onApObsLocDataAvailable"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lbi/k$v;->a:Lbi/k;

    invoke-static {p1}, Lbi/k;->m(Lbi/k;)Lbi/k$o;

    return-void
.end method
