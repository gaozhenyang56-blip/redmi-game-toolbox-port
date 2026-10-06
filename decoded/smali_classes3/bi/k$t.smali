.class Lbi/k$t;
.super Lcom/qti/wwandbprovider/IWWANDBProviderResponseListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbi/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "t"
.end annotation


# instance fields
.field final synthetic a:Lbi/k;


# direct methods
.method private constructor <init>(Lbi/k;)V
    .locals 0

    iput-object p1, p0, Lbi/k$t;->a:Lbi/k;

    invoke-direct {p0}, Lcom/qti/wwandbprovider/IWWANDBProviderResponseListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lbi/k;Lbi/k$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lbi/k$t;-><init>(Lbi/k;)V

    return-void
.end method


# virtual methods
.method public P7(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qti/wwandbprovider/BSObsLocationData;",
            ">;I)V"
        }
    .end annotation

    invoke-static {}, Lbi/k;->p()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lbi/k;->B()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onBsObsLocDataAvailable"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lbi/k$t;->a:Lbi/k;

    invoke-static {p1}, Lbi/k;->o(Lbi/k;)Lbi/k$m;

    return-void
.end method

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
    iget-object v0, p0, Lbi/k$t;->a:Lbi/k;

    invoke-static {v0}, Lbi/k;->o(Lbi/k;)Lbi/k$m;

    return-void
.end method
